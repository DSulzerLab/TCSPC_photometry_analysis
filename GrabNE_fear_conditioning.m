%% This section loads excel sheets containing photometry data. In each file, traces containing tone and shock are sorted and labeled in individual columns

tic
Conditioning_GrabNE01=xlsread('GrabNE mouse 1 fear conditiong.xlsx');
Conditioning_GrabNE02=xlsread('GrabNE mouse 2 fear conditiong.xlsx');
Conditioning_GrabNE03=xlsread('GrabNE mouse 3 fear conditiong.xlsx');
Conditioning_GrabNE04=xlsread('GrabNE mouse 4 fear conditiong.xlsx');

Conditioning_GrabNE21=xlsread('GrabNE21 fear conditioning.xlsx');
Conditioning_GrabNE22=xlsread('GrabNE22 fear conditioning.xlsx');
Conditioning_GrabNE23=xlsread('GrabNE23 fear conditioning.xlsx');
Conditioning_GrabNE24=xlsread('GrabNE24 fear conditioning.xlsx');

recall_GrabNE01=xlsread('GrabNE mouse 1 fear recall.xlsx');
recall_GrabNE02=xlsread('GrabNE mouse 2 fear recall.xlsx');

recall_GrabNE21=xlsread('GrabNE21 fear recall.xlsx');
recall_GrabNE22=xlsread('GrabNE22 fear recall.xlsx');
recall_GrabNE23=xlsread('GrabNE23 fear recall.xlsx');
recall_GrabNE24=xlsread('GrabNE24 fear recall.xlsx');

tonetime=Conditioning_GrabNE01(7:1206,5);
shocktime=Conditioning_GrabNE01(7:306,10);
%% This section takes columns containing tones during the conditioning sessions and sorts them into variables for each mouse

cGrabNE01_tones=Conditioning_GrabNE01(7:1206,6:7);
cGrabNE02_tones=Conditioning_GrabNE02(7:1206,6:7);
cGrabNE03_tones=Conditioning_GrabNE03(7:1206,6:7);
cGrabNE04_tones=Conditioning_GrabNE04(7:1206,6:7);

cGrabNE21_tones=Conditioning_GrabNE21(7:1206,6:7);
cGrabNE22_tones=Conditioning_GrabNE22(7:1206,6:7);
cGrabNE23_tones=Conditioning_GrabNE23(7:1206,6:7);
cGrabNE24_tones=Conditioning_GrabNE24(7:1206,6:7);

cGrabNE01_notones=Conditioning_GrabNE01(7:1206,15:16);
cGrabNE02_notones=Conditioning_GrabNE02(7:1206,15:16);
cGrabNE03_notones=Conditioning_GrabNE03(7:1206,15:16);
cGrabNE04_notones=Conditioning_GrabNE04(7:1206,15:16);

cGrabNE21_notones=Conditioning_GrabNE21(7:1206,15:16);
cGrabNE22_notones=Conditioning_GrabNE22(7:1206,15:16);
cGrabNE23_notones=Conditioning_GrabNE23(7:1206,15:16);
cGrabNE24_notones=Conditioning_GrabNE24(7:1206,15:16);

rGrabNE01_tones=recall_GrabNE01(7:1206,6:15);
rGrabNE02_tones=recall_GrabNE02(7:1206,6:15);

rGrabNE21_tones=recall_GrabNE21(7:1206,6:15);
rGrabNE22_tones=recall_GrabNE22(7:1206,6:15);
rGrabNE23_tones=recall_GrabNE23(7:1206,6:15);
rGrabNE24_tones=recall_GrabNE24(7:1206,6:15);

rGrabNE01_notones=recall_GrabNE01(7:1206,18:27);
rGrabNE02_notones=recall_GrabNE02(7:1206,18:27);

rGrabNE21_notones=recall_GrabNE21(7:1206,18:27);
rGrabNE22_notones=recall_GrabNE22(7:1206,18:27);
rGrabNE23_notones=recall_GrabNE23(7:1206,18:27);
rGrabNE24_notones=recall_GrabNE24(7:1206,18:27);
%% This section takes columns containing shocks during the conditioning sessions and sorts them into variables for each mouse

GrabNE01_shocks=Conditioning_GrabNE01(7:306,11:12);
GrabNE02_shocks=Conditioning_GrabNE02(7:306,11:12);
GrabNE03_shocks=Conditioning_GrabNE03(7:306,11:12);
GrabNE04_shocks=Conditioning_GrabNE04(7:306,11:12);

GrabNE21_shocks=Conditioning_GrabNE21(7:306,11:12);
GrabNE22_shocks=Conditioning_GrabNE22(7:306,11:12);
GrabNE23_shocks=Conditioning_GrabNE23(7:306,11:12);
GrabNE24_shocks=Conditioning_GrabNE24(7:306,11:12);

GrabNE01_noshocks=Conditioning_GrabNE01(7:306,20:21);
GrabNE02_noshocks=Conditioning_GrabNE02(7:306,20:21);
GrabNE03_noshocks=Conditioning_GrabNE03(7:306,20:21);
GrabNE04_noshocks=Conditioning_GrabNE04(7:306,20:21);

GrabNE21_noshocks=Conditioning_GrabNE21(7:306,20:21);
GrabNE22_noshocks=Conditioning_GrabNE22(7:306,20:21);
GrabNE23_noshocks=Conditioning_GrabNE23(7:306,20:21);
GrabNE24_noshocks=Conditioning_GrabNE24(7:306,20:21);

%% This section convert tones during conditioning to z-score using custom "Convert_tones_to_Zscore" function

zcGrabNE01_tones=Convert_tones_to_Zscore(tonetime,cGrabNE01_tones);
title('GrabNE #1 conditioning tone'); 
zcGrabNE02_tones=Convert_tones_to_Zscore(tonetime,cGrabNE02_tones);
title('GrabNE #2 conditioning tone'); 
zcGrabNE03_tones=Convert_tones_to_Zscore(tonetime,cGrabNE03_tones);
title('GrabNE #3 conditioning tone');
zcGrabNE04_tones=Convert_tones_to_Zscore(tonetime,cGrabNE04_tones);
title('GrabNE #4 conditioning tone'); 

zcGrabNE21_tones=Convert_tones_to_Zscore(tonetime,cGrabNE21_tones);
title('GrabNE #21 conditioning tone'); 
zcGrabNE22_tones=Convert_tones_to_Zscore(tonetime,cGrabNE22_tones);
title('GrabNE #22 conditioning tone'); 
zcGrabNE23_tones=Convert_tones_to_Zscore(tonetime,cGrabNE23_tones);
title('GrabNE #23 conditioning tone');
zcGrabNE24_tones=Convert_tones_to_Zscore(tonetime,cGrabNE24_tones);
title('GrabNE #24 conditioning tone'); 

%% This section convert intertrial periods during conditioning to z-score using custom "Convert_tones_to_Zscore" function

zcGrabNE01_notones=Convert_tones_to_Zscore(tonetime,cGrabNE01_notones);
title('GrabNE #1 conditioning no tone'); 
zcGrabNE02_notones=Convert_tones_to_Zscore(tonetime,cGrabNE02_notones);
title('GrabNE #2 conditioning no tone'); 
zcGrabNE03_notones=Convert_tones_to_Zscore(tonetime,cGrabNE03_notones);
title('GrabNE #3 conditioning no tone');
zcGrabNE04_notones=Convert_tones_to_Zscore(tonetime,cGrabNE04_notones);
title('GrabNE #4 conditioning no tone'); 

zcGrabNE21_notones=Convert_tones_to_Zscore(tonetime,cGrabNE21_notones);
title('GrabNE #21 conditioning no tone'); 
zcGrabNE22_notones=Convert_tones_to_Zscore(tonetime,cGrabNE22_notones);
title('GrabNE #22 conditioning no tone'); 
zcGrabNE23_notones=Convert_tones_to_Zscore(tonetime,cGrabNE23_notones);
title('GrabNE #23 conditioning no tone');
zcGrabNE24_notones=Convert_tones_to_Zscore(tonetime,cGrabNE24_notones);
title('GrabNE #24 conditioning no tone'); 

%% This section convert tones during the recall period to z-score using custom "Convert_tones_to_Zscore" function

zrGrabNE01_tones=Convert_tones_to_Zscore(tonetime,rGrabNE01_tones);
title('GrabNE #1 recall tones'); 
zrGrabNE02_tones=Convert_tones_to_Zscore(tonetime,rGrabNE02_tones);
title('GrabNE #2 recall tones'); 

zrGrabNE21_tones=Convert_tones_to_Zscore(tonetime,rGrabNE21_tones);
title('GrabNE #21 recall tones'); 
zrGrabNE22_tones=Convert_tones_to_Zscore(tonetime,rGrabNE22_tones);
title('GrabNE #22 recall tones'); 
zrGrabNE23_tones=Convert_tones_to_Zscore(tonetime,rGrabNE23_tones);
title('GrabNE #23 recall tones'); 
zrGrabNE24_tones=Convert_tones_to_Zscore(tonetime,rGrabNE24_tones);
title('GrabNE #24 recall tones'); 

%% This section convert intertrial periods during recall to z-score using custom "Convert_tones_to_Zscore" function

zrGrabNE01_notones=Convert_tones_to_Zscore(tonetime,rGrabNE01_notones);
title('GrabNE #1 no tone interval'); 
zrGrabNE02_notones=Convert_tones_to_Zscore(tonetime,rGrabNE02_notones);
title('GrabNE #2 no tone interval'); 

zrGrabNE21_notones=Convert_tones_to_Zscore(tonetime,rGrabNE21_notones);
title('GrabNE #21 no tone interval'); 
zrGrabNE22_notones=Convert_tones_to_Zscore(tonetime,rGrabNE22_notones);
title('GrabNE #22 no tone interval'); 
zrGrabNE23_notones=Convert_tones_to_Zscore(tonetime,rGrabNE23_notones);
title('GrabNE #23 no tone interval'); 
zrGrabNE24_notones=Convert_tones_to_Zscore(tonetime,rGrabNE24_notones);
title('GrabNE #24 no tone interval'); 

%% This section computes AUC for traces

% This calculates AUC for tone time window using custom "averageCSeachtone"
% function
average_tone_GrabNE01_tones=averageCSeachtone(zrGrabNE01_tones);
average_tone_GrabNE02_tones=averageCSeachtone(zrGrabNE02_tones);
average_tone_GrabNE21_tones=averageCSeachtone(zrGrabNE21_tones);
average_tone_GrabNE22_tones=averageCSeachtone(zrGrabNE22_tones);
average_tone_GrabNE23_tones=averageCSeachtone(zrGrabNE23_tones);
average_tone_GrabNE24_tones=averageCSeachtone(zrGrabNE24_tones);

% This aggregates the calculated AUC's into a single variable for export
% into Graphpad prism for further analysis
all_tone_AUC=[average_tone_GrabNE01_tones;
    average_tone_GrabNE02_tones;
    average_tone_GrabNE21_tones;
    average_tone_GrabNE22_tones;
    average_tone_GrabNE23_tones;
    average_tone_GrabNE24_tones;];


%% This converts shock traces to z-score using custom "Convert_shock_to_Zscore" function

% This computes zscored traces for shock
zGrabNE01_shocks=Convert_shock_to_Zscore(shocktime,GrabNE01_shocks);
title('GrabNE #1 shock'); 
zGrabNE02_shocks=Convert_shock_to_Zscore(shocktime,GrabNE02_shocks);
title('GrabNE #2 shock'); 
zGrabNE03_shocks=Convert_shock_to_Zscore(shocktime,GrabNE03_shocks);
title('GrabNE #3 shock'); 
zGrabNE04_shocks=Convert_shock_to_Zscore(shocktime,GrabNE04_shocks);
title('GrabNE #4 shock'); 

zGrabNE21_shocks=Convert_shock_to_Zscore(shocktime,GrabNE21_shocks);
title('GrabNE #21 shock'); 
zGrabNE22_shocks=Convert_shock_to_Zscore(shocktime,GrabNE22_shocks);
title('GrabNE #22 shock'); 
zGrabNE23_shocks=Convert_shock_to_Zscore(shocktime,GrabNE23_shocks);
title('GrabNE #23 shock'); 
zGrabNE24_shocks=Convert_shock_to_Zscore(shocktime,GrabNE24_shocks);
title('GrabNE #24 shock'); 

% this computes zscored traces for no shock comparison
zGrabNE01_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE01_noshocks);
title('GrabNE #1 no shock'); 
zGrabNE02_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE02_noshocks);
title('GrabNE #2 no shock'); 
zGrabNE03_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE03_noshocks);
title('GrabNE #3 no shock'); 
zGrabNE04_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE04_noshocks);
title('GrabNE #4 no shock'); 

zGrabNE21_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE21_noshocks);
title('GrabNE #21 no shock'); 
zGrabNE22_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE22_noshocks);
title('GrabNE #22 no shock'); 
zGrabNE23_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE23_noshocks);
title('GrabNE #23 no shock'); 
zGrabNE24_noshocks=Convert_shock_to_Zscore(shocktime,GrabNE24_noshocks);
title('GrabNE #24 no shock'); 

%% This section averages shock 1 for all mice seperately from shock 2 for all mice and plots the result

% this aquires shock 1 or 2 for each mouse and accumultes the traces
fear_conditioning_shock1=[zGrabNE01_shocks(:,1),zGrabNE02_shocks(:,1),zGrabNE21_shocks(:,1),zGrabNE22_shocks(:,1),zGrabNE23_shocks(:,1),zGrabNE24_shocks(:,1)];
fear_conditioning_shock2=[zGrabNE01_shocks(:,2),zGrabNE02_shocks(:,2),zGrabNE21_shocks(:,2),zGrabNE22_shocks(:,2),zGrabNE23_shocks(:,2),zGrabNE24_shocks(:,2)];

% this averages traces together
all_fear_conditioning_shock=[mean(fear_conditioning_shock1,2),mean(fear_conditioning_shock2,2)];

% this plots average response to shock 1
ShockErrorBarPlot(shocktime,fear_conditioning_shock1);
title('GrabNE Conditioning Shock 1');

% this plots average response to shock 2
ShockErrorBarPlot(shocktime,fear_conditioning_shock2);
title('GrabNE Conditioning Shock 2');

% this accumulates traces for no shock comparison
fear_conditioning_noshock1=[zGrabNE01_noshocks(:,1),zGrabNE02_noshocks(:,1),zGrabNE21_noshocks(:,1),zGrabNE22_noshocks(:,1),zGrabNE23_noshocks(:,1),zGrabNE24_noshocks(:,1)];
fear_conditioning_noshock2=[zGrabNE01_noshocks(:,2),zGrabNE02_noshocks(:,2),zGrabNE21_noshocks(:,2),zGrabNE22_noshocks(:,2),zGrabNE23_noshocks(:,2),zGrabNE24_noshocks(:,2)];

% this averages no shock comparisons together
all_fear_conditioning_noshock=[mean(fear_conditioning_noshock1,2),mean(fear_conditioning_noshock2,2)];

% this plots the no shock comparisons
ShockErrorBarPlot(shocktime,fear_conditioning_noshock1);
title('GrabNE Conditioning No Shock 1');

ShockErrorBarPlot(shocktime,fear_conditioning_noshock2);
title('GrabNE Conditioning No Shock 2');

%% this section overlap of shock 1 and 2 in the same figure

% this accumulates trace, mean, and sem into respective variables for shock
% 1 and 2
shock1_all_mice=fear_conditioning_shock1;
shock1_all_mice_mean=mean(shock1_all_mice,2);
shock1_all_mice_sem=std(shock1_all_mice,[],2)/sqrt(size(shock1_all_mice,2));

shock2_all_mice=fear_conditioning_shock2;
shock2_all_mice_mean=mean(shock2_all_mice,2);
shock2_all_mice_sem=std(shock2_all_mice,[],2)/sqrt(size(shock2_all_mice,2));

% this creates figure and first plots shock 1 
figure;
shadedErrorBar(shocktime,shock1_all_mice_mean,shock1_all_mice_sem);

% this then adds shock 2 to figure
hold on
shadedErrorBar(shocktime,shock2_all_mice_mean,shock2_all_mice_sem,'lineprops',{'b','markerfacecolor','k'});

% this creates title and labels axes
title('CB GrabNE Conditioning Shocks');
xlabel('Time');
ylabel('z score');

% this add lines that indicate shock onset and offset 
xline(0);
xline(1);

% this sets limits on y and x axis
ylim([-3 2]);
xlim([-5 10]);

% this makes font thicker
set(gca,'FontSize',20);

% this sets tick marks for x axis
xticks([-5:1:10]);

% this adds legend to figure
legend('Shock 1','Shock 2')


%% this section computes AUC for each shock using custom "ShockAnalyze" function

% this computes AUC for tone 1
AUC_shock1_GrabNE01=ShockAnalyze(zGrabNE01_shocks(:,1));
AUC_shock1_GrabNE02=ShockAnalyze(zGrabNE02_shocks(:,1));
AUC_shock1_GrabNE03=ShockAnalyze(zGrabNE03_shocks(:,1));
AUC_shock1_GrabNE04=ShockAnalyze(zGrabNE04_shocks(:,1));
AUC_shock1_GrabNE21=ShockAnalyze(zGrabNE21_shocks(:,1));
AUC_shock1_GrabNE22=ShockAnalyze(zGrabNE22_shocks(:,1));
AUC_shock1_GrabNE23=ShockAnalyze(zGrabNE23_shocks(:,1));
AUC_shock1_GrabNE24=ShockAnalyze(zGrabNE24_shocks(:,1));

% this accumulates tone 1 AUC into an array
all_AUC_shock1=[AUC_shock1_GrabNE01,AUC_shock1_GrabNE02,AUC_shock1_GrabNE03,AUC_shock1_GrabNE04,AUC_shock1_GrabNE21,AUC_shock1_GrabNE22,AUC_shock1_GrabNE23,AUC_shock1_GrabNE24];

% This computes AUC for tone 2
AUC_shock2_GrabNE01=ShockAnalyze(zGrabNE01_shocks(:,2));
AUC_shock2_GrabNE02=ShockAnalyze(zGrabNE02_shocks(:,2));
AUC_shock2_GrabNE03=ShockAnalyze(zGrabNE03_shocks(:,2));
AUC_shock2_GrabNE04=ShockAnalyze(zGrabNE04_shocks(:,2));
AUC_shock2_GrabNE21=ShockAnalyze(zGrabNE21_shocks(:,2));
AUC_shock2_GrabNE22=ShockAnalyze(zGrabNE22_shocks(:,2));
AUC_shock2_GrabNE23=ShockAnalyze(zGrabNE23_shocks(:,2));
AUC_shock2_GrabNE24=ShockAnalyze(zGrabNE24_shocks(:,2));

% this accumulates tone 2 AUC into an array
all_AUC_shock2=[AUC_shock2_GrabNE01,AUC_shock2_GrabNE02,AUC_shock2_GrabNE03,AUC_shock2_GrabNE04,AUC_shock2_GrabNE21,AUC_shock2_GrabNE22,AUC_shock2_GrabNE23,AUC_shock2_GrabNE24];

% this computes AUC for the no shock comparison
noAUC_shock1_GrabNE01=ShockAnalyze(zGrabNE01_noshocks(:,1));
noAUC_shock1_GrabNE02=ShockAnalyze(zGrabNE02_noshocks(:,1));
noAUC_shock1_GrabNE03=ShockAnalyze(zGrabNE03_noshocks(:,1));
noAUC_shock1_GrabNE04=ShockAnalyze(zGrabNE04_noshocks(:,1));
noAUC_shock1_GrabNE21=ShockAnalyze(zGrabNE21_noshocks(:,1));
noAUC_shock1_GrabNE22=ShockAnalyze(zGrabNE22_noshocks(:,1));
noAUC_shock1_GrabNE23=ShockAnalyze(zGrabNE23_noshocks(:,1));
noAUC_shock1_GrabNE24=ShockAnalyze(zGrabNE24_noshocks(:,1));

all_AUC_noshock1=[noAUC_shock1_GrabNE01,noAUC_shock1_GrabNE02,noAUC_shock1_GrabNE03,noAUC_shock1_GrabNE04,noAUC_shock1_GrabNE21,noAUC_shock1_GrabNE22,noAUC_shock1_GrabNE23,noAUC_shock1_GrabNE24];

%tone 2 AUC
noAUC_shock2_GrabNE01=ShockAnalyze(zGrabNE01_noshocks(:,2));
noAUC_shock2_GrabNE02=ShockAnalyze(zGrabNE02_noshocks(:,2));
noAUC_shock2_GrabNE03=ShockAnalyze(zGrabNE03_noshocks(:,2));
noAUC_shock2_GrabNE04=ShockAnalyze(zGrabNE04_noshocks(:,2));
noAUC_shock2_GrabNE21=ShockAnalyze(zGrabNE21_noshocks(:,2));
noAUC_shock2_GrabNE22=ShockAnalyze(zGrabNE22_noshocks(:,2));
noAUC_shock2_GrabNE23=ShockAnalyze(zGrabNE23_noshocks(:,2));
noAUC_shock2_GrabNE24=ShockAnalyze(zGrabNE24_noshocks(:,2));

all_AUC_noshock2=[noAUC_shock2_GrabNE01,noAUC_shock2_GrabNE02,noAUC_shock2_GrabNE03,noAUC_shock2_GrabNE04,noAUC_shock2_GrabNE21,noAUC_shock2_GrabNE22,noAUC_shock2_GrabNE23,noAUC_shock2_GrabNE24];


%% this section sorts traces for each recall tone in the order the were delivered

fear_recall_tone1=[zrGrabNE01_tones(:,1),zrGrabNE02_tones(:,1),zrGrabNE21_tones(:,1),zrGrabNE22_tones(:,1),zrGrabNE23_tones(:,1),zrGrabNE24_tones(:,1),];
fear_recall_tone2=[zrGrabNE01_tones(:,2),zrGrabNE02_tones(:,2),zrGrabNE21_tones(:,2),zrGrabNE22_tones(:,2),zrGrabNE23_tones(:,2),zrGrabNE24_tones(:,2),];
fear_recall_tone3=[zrGrabNE01_tones(:,3),zrGrabNE02_tones(:,3),zrGrabNE21_tones(:,3),zrGrabNE22_tones(:,3),zrGrabNE23_tones(:,3),zrGrabNE24_tones(:,3),];
fear_recall_tone4=[zrGrabNE01_tones(:,4),zrGrabNE02_tones(:,4),zrGrabNE21_tones(:,4),zrGrabNE22_tones(:,4),zrGrabNE23_tones(:,4),zrGrabNE24_tones(:,4),];
fear_recall_tone5=[zrGrabNE01_tones(:,5),zrGrabNE02_tones(:,5),zrGrabNE21_tones(:,5),zrGrabNE22_tones(:,5),zrGrabNE23_tones(:,5),zrGrabNE24_tones(:,5),];
fear_recall_tone6=[zrGrabNE01_tones(:,6),zrGrabNE02_tones(:,6),zrGrabNE21_tones(:,6),zrGrabNE22_tones(:,6),zrGrabNE23_tones(:,6),zrGrabNE24_tones(:,6),];
fear_recall_tone7=[zrGrabNE01_tones(:,7),zrGrabNE02_tones(:,7),zrGrabNE21_tones(:,7),zrGrabNE22_tones(:,7),zrGrabNE23_tones(:,7),zrGrabNE24_tones(:,7),];
fear_recall_tone8=[zrGrabNE01_tones(:,8),zrGrabNE02_tones(:,8),zrGrabNE21_tones(:,8),zrGrabNE22_tones(:,8),zrGrabNE23_tones(:,8),zrGrabNE24_tones(:,8),];
fear_recall_tone9=[zrGrabNE01_tones(:,9),zrGrabNE02_tones(:,9),zrGrabNE21_tones(:,9),zrGrabNE22_tones(:,9),zrGrabNE23_tones(:,9),zrGrabNE24_tones(:,9),];
fear_recall_tone10=[zrGrabNE01_tones(:,10),zrGrabNE02_tones(:,10),zrGrabNE21_tones(:,10),zrGrabNE22_tones(:,10),zrGrabNE23_tones(:,10),zrGrabNE24_tones(:,10),];

% this puts all tones into the same matrix
all_fear_recall_tones=[mean(fear_recall_tone1,2),mean(fear_recall_tone2,2),mean(fear_recall_tone3,2),mean(fear_recall_tone4,2),mean(fear_recall_tone5,2),mean(fear_recall_tone6,2),mean(fear_recall_tone7,2),mean(fear_recall_tone8,2),mean(fear_recall_tone9,2),mean(fear_recall_tone10,2)];

%% this section sorts traces for each conditioning tone in the order the were delivered

fear_conditioning_tone1=[zcGrabNE01_tones(:,1),zcGrabNE02_tones(:,1),zcGrabNE03_tones(:,1),zcGrabNE04_tones(:,1),zcGrabNE21_tones(:,1),zcGrabNE22_tones(:,1),zcGrabNE23_tones(:,1),zcGrabNE24_tones(:,1)];
fear_conditioning_tone2=[zcGrabNE01_tones(:,2),zcGrabNE02_tones(:,2),zcGrabNE03_tones(:,1),zcGrabNE04_tones(:,1),zcGrabNE21_tones(:,2),zcGrabNE22_tones(:,2),zcGrabNE23_tones(:,2),zcGrabNE24_tones(:,2)];

all_fear_conditioning_tones=[mean(fear_conditioning_tone1,2),mean(fear_conditioning_tone2,2)];

% no tone comparison
fear_conditioning_notone1=[zcGrabNE01_notones(:,1),zcGrabNE02_notones(:,1),zcGrabNE03_notones(:,1),zcGrabNE04_notones(:,1),zcGrabNE21_notones(:,1),zcGrabNE22_notones(:,1),zcGrabNE23_notones(:,1),zcGrabNE24_notones(:,1)];
fear_conditioning_notone2=[zcGrabNE01_notones(:,2),zcGrabNE02_notones(:,2),zcGrabNE03_notones(:,1),zcGrabNE04_notones(:,1),zcGrabNE21_notones(:,2),zcGrabNE22_notones(:,2),zcGrabNE23_notones(:,2),zcGrabNE24_notones(:,2)];

all_fear_conditioning_notones=[mean(fear_conditioning_notone1,2),mean(fear_conditioning_notone2,2)];

%% this section creates figure that overlaps tone 1 and tone 2 during conditioning

notone1_all_mice=fear_conditioning_notone1;
notone1_all_mice_mean=mean(notone1_all_mice,2);
notone1_all_mice_sem=std(notone1_all_mice,[],2)/sqrt(size(notone1_all_mice,2));
figure;
shadedErrorBar(tonetime,notone1_all_mice_mean,notone1_all_mice_sem);
hold on

tone1_all_mice=fear_conditioning_tone1;
tone1_all_mice_mean=mean(tone1_all_mice,2);
tone1_all_mice_sem=std(tone1_all_mice,[],2)/sqrt(size(tone1_all_mice,2));
shadedErrorBar(tonetime,tone1_all_mice_mean,tone1_all_mice_sem,'lineprops',{'b','markerfacecolor','k'});

tone2_all_mice=fear_conditioning_tone2;
tone2_all_mice_mean=mean(tone2_all_mice,2);
tone2_all_mice_sem=std(tone2_all_mice,[],2)/sqrt(size(tone2_all_mice,2));
shadedErrorBar(tonetime,tone2_all_mice_mean,tone2_all_mice_sem,'lineprops',{'r','markerfacecolor','k'});
title('CB GrabNE Conditioning Tones');
xlabel('Time');
ylabel('z score');
xline(0);
xline(29,'r');
xline(30);
ylim([-3 2]);
xlim([-10 40]);
set(gca,'FontSize',20);
xticks([-10:5:40]);
legend('Intertrial','Conditioning tone 1','Conditioning tone 2' );

%% this section plots heat map of recall tones

figure;
clims = [-1.5 1.5];
imagesc(tonetime,1,([all_fear_recall_tones]).',clims);
colormap('jet');
title('GrabNE Recall (all mice average)');
xlabel('Time');
ylabel('Trial');
hold on
xline(0,':','LineWidth',4);
xline(30,':','LineWidth',4);
xlim([-10 40]);
xticks([-10:5:40]);
set(gca,'FontSize',20)
colorbar;

%% this section plots heat map of conditioning tones
figure;
clims = [0 2];
imagesc(tonetime,1,([all_fear_conditioning_tones]).',clims);
colormap('hot');
title('GrabNE Conditioning Tones (all mice average)');
xlabel('Time');
ylabel('Trial');
hold on
xline(0,'b','LineWidth',4);
xline(29,'b','LineWidth',4);
xline(30,'b','LineWidth',4);
xlim([-10 40]);
xticks([-10:5:40]);
set(gca,'FontSize',20)
colorbar;

%% this section plots average recall trace and then overlaps with intertrial period
figure;
Fear_recall=[zrGrabNE01_tones,zrGrabNE02_tones,zrGrabNE21_tones,zrGrabNE22_tones,zrGrabNE23_tones,zrGrabNE24_tones];
hold on
ErrorBarPlot(tonetime,Fear_recall);
title('GrabNE recall (all mice average)');
xlim([-10 40]);
xticks([-10:5:40]);
set(gca,'FontSize',20)

Fear_recall_intertrial=[zrGrabNE01_notones,zrGrabNE02_notones,zrGrabNE21_notones,zrGrabNE22_notones,zrGrabNE23_notones,zrGrabNE24_notones];
ErrorBarPlotBlue(tonetime,Fear_recall_intertrial);
legend('Intertrial','Recall tone');
ylim([-1.5 2]);

%% this section calculates AUC of conditioning tones

%tone 1 AUC
AUC_conditioning1_GrabNE01=AUC_tones(zcGrabNE01_tones(:,1));
AUC_conditioning1_GrabNE02=AUC_tones(zcGrabNE02_tones(:,1));
AUC_conditioning1_GrabNE03=AUC_tones(zcGrabNE03_tones(:,1));
AUC_conditioning1_GrabNE04=AUC_tones(zcGrabNE04_tones(:,1));
AUC_conditioning1_GrabNE21=AUC_tones(zcGrabNE21_tones(:,1));
AUC_conditioning1_GrabNE22=AUC_tones(zcGrabNE22_tones(:,1));
AUC_conditioning1_GrabNE23=AUC_tones(zcGrabNE23_tones(:,1));
AUC_conditioning1_GrabNE24=AUC_tones(zcGrabNE24_tones(:,1));

all_AUC_tone1=[AUC_conditioning1_GrabNE01,AUC_conditioning1_GrabNE02,AUC_conditioning1_GrabNE03,AUC_conditioning1_GrabNE04,AUC_conditioning1_GrabNE21,AUC_conditioning1_GrabNE22,AUC_conditioning1_GrabNE23,AUC_conditioning1_GrabNE24];

%tone 2 AUC
AUC_conditioning2_GrabNE01=AUC_tones(zcGrabNE01_tones(:,2));
AUC_conditioning2_GrabNE02=AUC_tones(zcGrabNE02_tones(:,2));
AUC_conditioning2_GrabNE03=AUC_tones(zcGrabNE03_tones(:,2));
AUC_conditioning2_GrabNE04=AUC_tones(zcGrabNE04_tones(:,2));
AUC_conditioning2_GrabNE21=AUC_tones(zcGrabNE21_tones(:,2));
AUC_conditioning2_GrabNE22=AUC_tones(zcGrabNE22_tones(:,2));
AUC_conditioning2_GrabNE23=AUC_tones(zcGrabNE23_tones(:,2));
AUC_conditioning2_GrabNE24=AUC_tones(zcGrabNE24_tones(:,2));

all_AUC_tone2=[AUC_conditioning2_GrabNE01,AUC_conditioning2_GrabNE02,AUC_conditioning2_GrabNE03,AUC_conditioning2_GrabNE04,AUC_conditioning2_GrabNE21,AUC_conditioning2_GrabNE22,AUC_conditioning2_GrabNE23,AUC_conditioning2_GrabNE24];

% intertrial comparison
% no tone 1 AUC
noAUC_conditioning1_GrabNE01=AUC_tones(zcGrabNE01_notones(:,1));
noAUC_conditioning1_GrabNE02=AUC_tones(zcGrabNE02_notones(:,1));
noAUC_conditioning1_GrabNE03=AUC_tones(zcGrabNE03_notones(:,1));
noAUC_conditioning1_GrabNE04=AUC_tones(zcGrabNE04_notones(:,1));
noAUC_conditioning1_GrabNE21=AUC_tones(zcGrabNE21_notones(:,1));
noAUC_conditioning1_GrabNE22=AUC_tones(zcGrabNE22_notones(:,1));
noAUC_conditioning1_GrabNE23=AUC_tones(zcGrabNE23_notones(:,1));
noAUC_conditioning1_GrabNE24=AUC_tones(zcGrabNE24_notones(:,1));

all_AUC_notone1=[noAUC_conditioning1_GrabNE01,noAUC_conditioning1_GrabNE02,noAUC_conditioning1_GrabNE03,noAUC_conditioning1_GrabNE04,noAUC_conditioning1_GrabNE21,noAUC_conditioning1_GrabNE22,noAUC_conditioning1_GrabNE23,noAUC_conditioning1_GrabNE24];

% no tone 2 AUC
noAUC_conditioning2_GrabNE01=AUC_tones(zcGrabNE01_notones(:,2));
noAUC_conditioning2_GrabNE02=AUC_tones(zcGrabNE02_notones(:,2));
noAUC_conditioning2_GrabNE03=AUC_tones(zcGrabNE03_notones(:,2));
noAUC_conditioning2_GrabNE04=AUC_tones(zcGrabNE04_notones(:,2));
noAUC_conditioning2_GrabNE21=AUC_tones(zcGrabNE21_notones(:,2));
noAUC_conditioning2_GrabNE22=AUC_tones(zcGrabNE22_notones(:,2));
noAUC_conditioning2_GrabNE23=AUC_tones(zcGrabNE23_notones(:,2));
noAUC_conditioning2_GrabNE24=AUC_tones(zcGrabNE24_notones(:,2));

all_AUC_notone2=[noAUC_conditioning2_GrabNE01,noAUC_conditioning2_GrabNE02,noAUC_conditioning2_GrabNE03,noAUC_conditioning2_GrabNE04,noAUC_conditioning2_GrabNE21,noAUC_conditioning2_GrabNE22,noAUC_conditioning2_GrabNE23,noAUC_conditioning2_GrabNE24];

%% this section calculates AUC of recall tones

AUC_recall_GrabNE01=AUC_tones(zrGrabNE01_tones);
AUC_recall_GrabNE02=AUC_tones(zrGrabNE02_tones);
AUC_recall_GrabNE21=AUC_tones(zrGrabNE21_tones);
AUC_recall_GrabNE22=AUC_tones(zrGrabNE22_tones);
AUC_recall_GrabNE23=AUC_tones(zrGrabNE23_tones);
AUC_recall_GrabNE24=AUC_tones(zrGrabNE24_tones);

all_AUC_recall=[AUC_recall_GrabNE01,AUC_recall_GrabNE02,AUC_recall_GrabNE21,AUC_recall_GrabNE22,AUC_recall_GrabNE23,AUC_recall_GrabNE24];

%% get AUC of interval

AUC_notone_GrabNE01=AUC_tones(zrGrabNE01_notones);
AUC_notone_GrabNE02=AUC_tones(zrGrabNE02_notones);
AUC_notone_GrabNE21=AUC_tones(zrGrabNE21_notones);
AUC_notone_GrabNE22=AUC_tones(zrGrabNE22_notones);
AUC_notone_GrabNE23=AUC_tones(zrGrabNE23_notones);
AUC_notone_GrabNE24=AUC_tones(zrGrabNE24_notones);

all_AUC_notone=[AUC_notone_GrabNE01,AUC_notone_GrabNE02,AUC_notone_GrabNE21,AUC_notone_GrabNE22,AUC_notone_GrabNE23,AUC_notone_GrabNE24];

%% this section accumulates AUC into variables to be exported to graphpad for further analysis

tone_parts_AUC=[
zrGrabNE01_tones;
zrGrabNE02_tones;
zrGrabNE21_tones;
zrGrabNE22_tones;
zrGrabNE23_tones;
zrGrabNE24_tones;
];

notone_parts_AUC=[
zrGrabNE01_notones;
zrGrabNE02_notones;
zrGrabNE21_notones;
zrGrabNE22_notones;
zrGrabNE23_notones;
zrGrabNE24_notones;
];
toc