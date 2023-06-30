%% This code will analyze GrabNE signal from optofluid implant in the cerebellum following CNO infusion in LC dreadd injected TH-cre mice
tic
%% load traces

% TCSPC mice
Conditioning_GrabNE01=xlsread('GrabNE mouse 1 fear conditiong.xlsx'); % male
Conditioning_GrabNE02=xlsread('GrabNE mouse 2 fear conditiong.xlsx'); % male
Conditioning_GrabNE03=xlsread('GrabNE mouse 3 fear conditiong.xlsx'); % female
Conditioning_GrabNE04=xlsread('GrabNE mouse 4 fear conditiong.xlsx'); % female

Conditioning_GrabNE21=xlsread('GrabNE21 fear conditioning.xlsx'); % female
Conditioning_GrabNE22=xlsread('GrabNE22 fear conditioning.xlsx'); % female
Conditioning_GrabNE23=xlsread('GrabNE23 fear conditioning.xlsx'); % female
Conditioning_GrabNE24=xlsread('GrabNE24 fear conditioning.xlsx'); % female

recall_GrabNE01=xlsread('GrabNE mouse 1 fear recall.xlsx'); % male
recall_GrabNE02=xlsread('GrabNE mouse 2 fear recall.xlsx'); % male

recall_GrabNE21=xlsread('GrabNE21 fear recall.xlsx'); % female
recall_GrabNE22=xlsread('GrabNE22 fear recall.xlsx'); % female
recall_GrabNE23=xlsread('GrabNE23 fear recall.xlsx'); % female
recall_GrabNE24=xlsread('GrabNE24 fear recall.xlsx'); % female

%% these are interpolated time windows to be used for tone and shock

window_of_interpolation_tone=transpose(-10:0.05:40);
window_of_interpolation_shock=transpose(-5:0.05:10);

tone_shock_times=xlsread('timings.xlsx');

% these are cells that corrospond to TCSPC timing mouse 1-4
TC1_conditioning_tone_times=tone_shock_times(23:24,2);
TC1_recall_tone_times=tone_shock_times(32:41,2);
TC1_shock_times=tone_shock_times(27:28,2);

% these are cells that corrospond to TCSPC timing mouse 21-24
TC21_conditioning_tone_times=tone_shock_times(23:24,3);
TC21_recall_tone_times=tone_shock_times(32:41,3);
TC21_shock_times=tone_shock_times(27:28,3);

%% I will isolate these tones manually

cGrabNE01_tones=Conditioning_GrabNE01(7:1007,6:7);
cGrabNE02_tones=Conditioning_GrabNE02(7:1007,6:7);
cGrabNE03_tones=Conditioning_GrabNE03(7:1007,6:7);
cGrabNE04_tones=Conditioning_GrabNE04(7:1007,6:7);

cGrabNE21_tones=Conditioning_GrabNE21(7:1007,6:7);
cGrabNE22_tones=Conditioning_GrabNE22(7:1007,6:7);
cGrabNE23_tones=Conditioning_GrabNE23(7:1007,6:7);
cGrabNE24_tones=Conditioning_GrabNE24(7:1007,6:7);

rGrabNE01_tones=recall_GrabNE01(7:1007,6:15);
rGrabNE02_tones=recall_GrabNE02(7:1007,6:15);

rGrabNE21_tones=recall_GrabNE21(7:1007,6:15);
rGrabNE22_tones=recall_GrabNE22(7:1007,6:15);
rGrabNE23_tones=recall_GrabNE23(7:1007,6:15);
rGrabNE24_tones=recall_GrabNE24(7:1007,6:15);

GrabNE01_shocks=[Conditioning_GrabNE01(7:306,11:12);Conditioning_GrabNE01(306,11:12)];
GrabNE02_shocks=[Conditioning_GrabNE02(7:306,11:12);Conditioning_GrabNE02(306,11:12)];
GrabNE03_shocks=[Conditioning_GrabNE03(7:306,11:12);Conditioning_GrabNE03(306,11:12)];
GrabNE04_shocks=[Conditioning_GrabNE04(7:306,11:12);Conditioning_GrabNE04(306,11:12)];

GrabNE21_shocks=[Conditioning_GrabNE21(7:306,11:12);Conditioning_GrabNE01(306,11:12)];
GrabNE22_shocks=[Conditioning_GrabNE22(7:306,11:12);Conditioning_GrabNE02(306,11:12)];
GrabNE23_shocks=[Conditioning_GrabNE23(7:306,11:12);Conditioning_GrabNE03(306,11:12)];
GrabNE24_shocks=[Conditioning_GrabNE24(7:306,11:12);Conditioning_GrabNE04(306,11:12)];

%% This computes zscored traces for manually isolated traces

zGrabNE01_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE01_shocks);
title('GrabNE #1 shock'); 
zGrabNE02_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE02_shocks);
title('GrabNE #2 shock'); 
zGrabNE03_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE03_shocks);
title('GrabNE #3 shock'); 
zGrabNE04_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE04_shocks);
title('GrabNE #4 shock'); 

zGrabNE21_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE21_shocks);
title('GrabNE #21 shock'); 
zGrabNE22_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE22_shocks);
title('GrabNE #22 shock'); 
zGrabNE23_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE23_shocks);
title('GrabNE #23 shock'); 
zGrabNE24_shocks=Convert_shock_to_Zscore(window_of_interpolation_shock,GrabNE24_shocks);
title('GrabNE #24 shock'); 

zcGrabNE01_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE01_tones);
title('GrabNE #1 conditioning tone'); 
zcGrabNE02_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE02_tones);
title('GrabNE #2 conditioning tone'); 
zcGrabNE03_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE03_tones);
title('GrabNE #3 conditioning tone');
zcGrabNE04_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE04_tones);
title('GrabNE #4 conditioning tone'); 

zcGrabNE21_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE21_tones);
title('GrabNE #21 conditioning tone'); 
zcGrabNE22_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE22_tones);
title('GrabNE #22 conditioning tone'); 
zcGrabNE23_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE23_tones);
title('GrabNE #23 conditioning tone');
zcGrabNE24_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,cGrabNE24_tones);
title('GrabNE #24 conditioning tone'); 

zrGrabNE01_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,rGrabNE01_tones);
title('GrabNE #1 recall tones'); 
zrGrabNE02_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,rGrabNE02_tones);
title('GrabNE #2 recall tones'); 

zrGrabNE21_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,rGrabNE21_tones);
title('GrabNE #21 recall tones'); 
zrGrabNE22_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,rGrabNE22_tones);
title('GrabNE #22 recall tones'); 
zrGrabNE23_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,rGrabNE23_tones);
title('GrabNE #23 recall tones'); 
zrGrabNE24_tones=Convert_tones_to_Zscore(window_of_interpolation_tone,rGrabNE24_tones);
title('GrabNE #24 recall tones'); 

%% group mice together

TC_conditioning_tones_manual_isolation=[zcGrabNE01_tones,zcGrabNE02_tones,zcGrabNE03_tones,zcGrabNE04_tones,zcGrabNE21_tones,zcGrabNE22_tones,zcGrabNE23_tones,zcGrabNE24_tones];
TC_recall_tones_manual_isolation=[zrGrabNE01_tones,zrGrabNE02_tones,zrGrabNE21_tones,zrGrabNE22_tones,zrGrabNE23_tones,zrGrabNE24_tones];
TC_shocks_manual_isolation=[zGrabNE01_shocks,zGrabNE02_shocks,zGrabNE03_shocks,zGrabNE04_shocks,zGrabNE21_shocks,zGrabNE22_shocks,zGrabNE23_shocks,zGrabNE24_shocks];

%% movement correlation traces

TC_mouse1_recall_movement_trace=xlsread('GrabNE C1 recall movement traces - Test 1.xlsx'); % female
TC_mouse2_recall_movement_trace=xlsread('GrabNE C1 recall movement traces - Test 2.xlsx'); % female

TC_mouse21_recall_movement_trace=xlsread('GrabNE C2 recall movement traces - 21.xlsx'); % female
TC_mouse22_recall_movement_trace=xlsread('GrabNE C2 recall movement traces - 22.xlsx'); % female
TC_mouse23_recall_movement_trace=xlsread('GrabNE C2 recall movement traces - 23.xlsx'); % female
TC_mouse24_recall_movement_trace=xlsread('GrabNE C2 recall movement traces - 24.xlsx'); % female

%% isolate movement traces for recall

TC_mouse1_recall_movement=tone_movement_isolator(TC_mouse1_recall_movement_trace(:,1),TC_mouse1_recall_movement_trace(:,2),TC21_recall_tone_times(1:9));
TC_mouse2_recall_movement=tone_movement_isolator(TC_mouse2_recall_movement_trace(:,1),TC_mouse2_recall_movement_trace(:,2),TC21_recall_tone_times(1:9));

TC_mouse21_recall_movement=tone_movement_isolator(TC_mouse21_recall_movement_trace(:,1),TC_mouse21_recall_movement_trace(:,2),TC1_recall_tone_times(1:9));
TC_mouse22_recall_movement=tone_movement_isolator(TC_mouse22_recall_movement_trace(:,1),TC_mouse22_recall_movement_trace(:,2),TC1_recall_tone_times(1:9));
TC_mouse23_recall_movement=tone_movement_isolator(TC_mouse23_recall_movement_trace(:,1),TC_mouse23_recall_movement_trace(:,2),TC1_recall_tone_times(1:9));
TC_mouse24_recall_movement=tone_movement_isolator(TC_mouse24_recall_movement_trace(:,1),TC_mouse24_recall_movement_trace(:,2),TC1_recall_tone_times(1:9));

%% do pearson cross correlation on movement and photometry signal 

window_of_interpolation_tone2=transpose(0:0.05:50);
Time_shift_array=cat(1,(flip(window_of_interpolation_tone2(1:length(window_of_interpolation_tone2)))*-1),window_of_interpolation_tone2(2:length(window_of_interpolation_tone2)));

cross_correlation_TC_mouse1_recall_tone=CorrelationErrorBarPlot(Time_shift_array,TC_mouse1_recall_movement,zrGrabNE01_tones);
xlabel('Time');
ylabel('Pearson R');
xline(0,'b','LineWidth',2);
title('GrabNE mouse #1 Recall Tone Cross Correlations');
set(gca,'FontSize',40);

cross_correlation_TC_mouse2_recall_tone=CorrelationErrorBarPlot(Time_shift_array,TC_mouse2_recall_movement,zrGrabNE02_tones);
xlabel('Time');
ylabel('Pearson R');
xline(0,'b','LineWidth',2);
title('GrabNE mouse #2 Recall Tone Cross Correlations');
set(gca,'FontSize',40);

cross_correlation_TC_mouse21_recall_tone=CorrelationErrorBarPlot(Time_shift_array,TC_mouse21_recall_movement,zrGrabNE21_tones);
xlabel('Time');
ylabel('Pearson R');
xline(0,'b','LineWidth',2);
title('GrabNE mouse #21 Recall Tone Cross Correlations');
set(gca,'FontSize',40);

cross_correlation_TC_mouse22_recall_tone=CorrelationErrorBarPlot(Time_shift_array,TC_mouse22_recall_movement,zrGrabNE22_tones);
xlabel('Time');
ylabel('Pearson R');
xline(0,'b','LineWidth',2);
title('GrabNE mouse #22 Recall Tone Cross Correlations');
set(gca,'FontSize',40);

cross_correlation_TC_mouse23_recall_tone=CorrelationErrorBarPlot(Time_shift_array,TC_mouse23_recall_movement,zrGrabNE23_tones);
xlabel('Time');
ylabel('Pearson R');
xline(0,'b','LineWidth',2);
title('GrabNE mouse #23 Recall Tone Cross Correlations');
set(gca,'FontSize',40);

cross_correlation_TC_mouse24_recall_tone=CorrelationErrorBarPlot(Time_shift_array,TC_mouse24_recall_movement,zrGrabNE23_tones);
xlabel('Time');
ylabel('Pearson R');
xline(0,'b','LineWidth',2);
title('GrabNE mouse #24 Recall Tone Cross Correlations');
set(gca,'FontSize',40);

%% average the correlations
all_recall_cross_correaltions=[cross_correlation_TC_mouse1_recall_tone,cross_correlation_TC_mouse2_recall_tone,cross_correlation_TC_mouse21_recall_tone,cross_correlation_TC_mouse22_recall_tone,cross_correlation_TC_mouse24_recall_tone];

% plot the average for all mice
zSEM=std(all_recall_cross_correaltions,[],2)/sqrt(size(all_recall_cross_correaltions,2));

figure;
shadedErrorBar(Time_shift_array,mean(all_recall_cross_correaltions,2),zSEM);
xlabel('Time');
ylabel('Pearson R');
xline(0,'b','LineWidth',2);
title('GrabNE Average Recall Tone Cross Correlations');
set(gca,'FontSize',40);
xticks([-50:10:50]);

%% overlap movement trace and photometry trace for each mouse

waveform_analyzer_movement_overlap(window_of_interpolation_tone,zrGrabNE01_tones,TC_mouse1_recall_movement(:,1:9));
title('Average GrabNE and Movement Traces (mouse #1)');

waveform_analyzer_movement_overlap(window_of_interpolation_tone,zrGrabNE02_tones,TC_mouse2_recall_movement(:,1:9));
title('Average GrabNE and Movement Traces (mouse #2)');

waveform_analyzer_movement_overlap(window_of_interpolation_tone,zrGrabNE21_tones,TC_mouse21_recall_movement(:,1:9));
title('Average GrabNE and Movement Traces (mouse #21)');

waveform_analyzer_movement_overlap(window_of_interpolation_tone,zrGrabNE22_tones,TC_mouse22_recall_movement(:,1:9));
title('Average GrabNE and Movement Traces (mouse #22)');

waveform_analyzer_movement_overlap(window_of_interpolation_tone,zrGrabNE23_tones,TC_mouse23_recall_movement(:,1:9));
title('Average GrabNE and Movement Traces (mouse #23)');

waveform_analyzer_movement_overlap(window_of_interpolation_tone,zrGrabNE24_tones,TC_mouse24_recall_movement(:,1:9));
title('Average GrabNE and Movement Traces (mouse #24)');


%% overlap average movement trace and average photometry trace for all mice

all_mice_recall_movement=[TC_mouse1_recall_movement(:,1:9),TC_mouse2_recall_movement(:,1:9),TC_mouse21_recall_movement(:,1:9),TC_mouse22_recall_movement(:,1:9),TC_mouse23_recall_movement(:,1:9),TC_mouse24_recall_movement(:,1:9)];

waveform_analyzer_movement_overlap(window_of_interpolation_tone,TC_recall_tones_manual_isolation,all_mice_recall_movement);
title('Average GrabNE and Movement Traces (all mice and tones)');

%% gender split

% TCSPC recall male vs female
Male_TC_recall_tones_manual_isolation=[zrGrabNE01_tones,zrGrabNE02_tones];
Female_TC_recall_tones_manual_isolation=[zrGrabNE21_tones,zrGrabNE22_tones,zrGrabNE23_tones,zrGrabNE24_tones];

waveform_analyzer(window_of_interpolation_tone,Male_TC_recall_tones_manual_isolation,Female_TC_recall_tones_manual_isolation);
title('male vs female TCSPC');

toc