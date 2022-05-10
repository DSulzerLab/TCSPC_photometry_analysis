tic
%% this section will load excel sheets containing photometry data for all mice
mouse1amph=xlsread('grabne mouse 1 amph.xlsx');
mouse2amph=xlsread('grabne mouse 2 amph.xlsx');
mouse3amph=xlsread('grabne mouse 3 amph.xlsx');
mouse4amph=xlsread('grabne mouse 4 amph.xlsx');

mouse21amph=xlsread('mouse 21 amphetamine shock.xlsx');
mouse22amph=xlsread('mouse 22 amphetamine shock.xlsx');
mouse23amph=xlsread('mouse 23 amphetamine shock.xlsx');
mouse24amph=xlsread('mouse 24 amphetamine shock.xlsx');

mouse1=xlsread('GrabNE mouse 1 shock test 2.xlsx');
mouse2=xlsread('GrabNE mouse 2 shock test 2.xlsx');
mouse3=xlsread('GrabNE mouse 3 shock test 2.xlsx');
mouse4=xlsread('GrabNE mouse 4 shock test 2.xlsx');

mouse21=xlsread('mouse 21 shock + saline.xlsx');
mouse22=xlsread('mouse 22 shock + saline.xlsx');
mouse23=xlsread('mouse 23 shock + saline.xlsx');
mouse24=xlsread('mouse 24 shock + saline.xlsx');

% this takes time from 1 file and puts it in a variable 
Time=mouse1amph(5:305,5);

%% this will create arrays for the shocks given to each mouse

%amphetamine
amphmouse1_shocks=mouse1amph(5:305,6:15);
amphmouse2_shocks=mouse2amph(5:305,6:15);
amphmouse3_shocks=mouse3amph(5:305,6:15);
amphmouse4_shocks=mouse4amph(5:305,6:15);

amphmouse21_shocks=mouse21amph(5:305,6:15);
amphmouse22_shocks=mouse22amph(5:305,6:15);
amphmouse23_shocks=mouse23amph(5:305,6:15);
amphmouse24_shocks=mouse24amph(5:305,6:15);

%saline
mouse1_shocks1=mouse1(5:305,6:15);
mouse2_shocks2=mouse2(5:305,6:15);
mouse3_shocks3=mouse3(5:305,6:15);
mouse4_shocks4=mouse4(5:305,6:15);

mouse21_shocks1=mouse21(5:305,6:15);
mouse22_shocks2=mouse22(5:305,6:15);
mouse23_shocks3=mouse23(5:305,6:15);
mouse24_shocks4=mouse24(5:305,6:15);

% no shock control
mouse1_noshocks1=mouse1(5:305,18:27);
mouse2_noshocks2=mouse2(5:305,18:27);
mouse3_noshocks3=mouse3(5:305,18:27);
mouse4_noshocks4=mouse4(5:305,18:27);

mouse21_noshocks1=mouse21(5:305,18:27);
mouse22_noshocks2=mouse22(5:305,18:27);
mouse23_noshocks3=mouse23(5:305,18:27);
mouse24_noshocks4=mouse24(5:305,18:27);

%% this will convert the traces to zscore

APMHmouse1_meanz=Convert_shock_to_Zscore(Time,amphmouse1_shocks);
title('Grab NE #1 Shock + Amphetamine');
APMHmouse2_meanz=Convert_shock_to_Zscore(Time,amphmouse2_shocks);
title('Grab NE #2 Shock + Amphetamine');
APMHmouse3_meanz=Convert_shock_to_Zscore(Time,amphmouse3_shocks);
title('Grab NE #3 Shock + Amphetamine');
APMHmouse4_meanz=Convert_shock_to_Zscore(Time,amphmouse4_shocks);
title('Grab NE #4 Shock + Amphetamine');

APMHmouse21_meanz=Convert_shock_to_Zscore(Time,amphmouse21_shocks);
title('Grab NE #21 Shock + Amphetamine');
APMHmouse22_meanz=Convert_shock_to_Zscore(Time,amphmouse22_shocks);
title('Grab NE #22 Shock + Amphetamine');
APMHmouse23_meanz=Convert_shock_to_Zscore(Time,amphmouse23_shocks);
title('Grab NE #23 Shock + Amphetamine');
APMHmouse24_meanz=Convert_shock_to_Zscore(Time,amphmouse24_shocks);
title('Grab NE #24 Shock + Amphetamine');

% saline condition

mouse1_meanz=Convert_shock_to_Zscore(Time,mouse1_shocks1);
title('Grab NE #1 footshock test');
mouse2_meanz=Convert_shock_to_Zscore(Time,mouse2_shocks2);
title('Grab NE #2 footshock test');
mouse3_meanz=Convert_shock_to_Zscore(Time,mouse3_shocks3);
title('Grab NE #3 footshock test');
mouse4_meanz=Convert_shock_to_Zscore(Time,mouse4_shocks4);
title('Grab NE #4 footshock test');

mouse21_meanz=Convert_shock_to_Zscore(Time,mouse21_shocks1);
title('Grab NE #21 footshock test');
mouse22_meanz=Convert_shock_to_Zscore(Time,mouse22_shocks2);
title('Grab NE #22 footshock test');
mouse23_meanz=Convert_shock_to_Zscore(Time,mouse23_shocks3);
title('Grab NE #23 footshock test');
mouse24_meanz=Convert_shock_to_Zscore(Time,mouse24_shocks4);
title('Grab NE #24 footshock test');

% no shock control

nomouse1_meanz=Convert_shock_to_Zscore(Time,mouse1_noshocks1);
title('Grab NE #1 no shock test');
nomouse2_meanz=Convert_shock_to_Zscore(Time,mouse2_noshocks2);
title('Grab NE #2 no shock test');
nomouse3_meanz=Convert_shock_to_Zscore(Time,mouse3_noshocks3);
title('Grab NE #3 no shock test');
nomouse4_meanz=Convert_shock_to_Zscore(Time,mouse4_noshocks4);
title('Grab NE #4 no shock test');

nomouse21_meanz=Convert_shock_to_Zscore(Time,mouse21_noshocks1);
title('Grab NE #21 no shock test');
nomouse22_meanz=Convert_shock_to_Zscore(Time,mouse22_noshocks2);
title('Grab NE #22 no shock test');
nomouse23_meanz=Convert_shock_to_Zscore(Time,mouse23_noshocks3);
title('Grab NE #23 no shock test');
nomouse24_meanz=Convert_shock_to_Zscore(Time,mouse24_noshocks4);
title('Grab NE #24 no shock test');

%% this will create a figure with average traces for all conditions overlaped

% no shock control
noall_mice=[nomouse1_meanz,nomouse2_meanz,nomouse3_meanz,nomouse4_meanz,nomouse21_meanz,nomouse22_meanz,nomouse23_meanz,nomouse24_meanz];
noall_mice_mean=mean(noall_mice,2);
noall_mice_sem=std(noall_mice,[],2)/sqrt(size(noall_mice,2));
figure;
shadedErrorBar(Time,noall_mice_mean,noall_mice_sem);
hold on

%saline
all_mice=[mouse1_meanz,mouse2_meanz,mouse3_meanz,mouse4_meanz,mouse21_meanz,mouse22_meanz,mouse23_meanz,mouse24_meanz];
all_mice_mean=mean(all_mice,2);
all_mice_sem=std(all_mice,[],2)/sqrt(size(all_mice,2));
shadedErrorBar(Time,all_mice_mean,all_mice_sem,'lineprops',{'b','markerfacecolor','k'});
title('Footshock Induced GrabNE Flourescence');

%amphetamine overlap
hold on
AMPH_all_mice=[APMHmouse1_meanz,APMHmouse2_meanz,APMHmouse3_meanz,APMHmouse4_meanz,APMHmouse21_meanz,APMHmouse22_meanz,APMHmouse23_meanz,APMHmouse24_meanz];

AMPH_all_mice_mean=mean(AMPH_all_mice,2);
AMPH_all_mice_sem=std(AMPH_all_mice,[],2)/sqrt(size(AMPH_all_mice,2));
shadedErrorBar(Time,AMPH_all_mice_mean,AMPH_all_mice_sem,'lineprops',{'r','markerfacecolor','k'});
xlabel('Time (sec)');
ylabel('Z-score');
ylim([-2 1]);
set(gca,'fontsize', 20)
set(gca,'XTick',(-5:1:10))
xline(0);
xline(1);
legend({'No Shock','Shock + Saline','Shock + Amphetamine'},'Location','northwest');

%% This calculates the AUC for the peak following shocks

% AUC of no shock peak
increase_AUC_no_mouse1z=ShockAnalyzeIncreaseAUC(nomouse1_meanz);
increase_AUC_no_mouse2z=ShockAnalyzeIncreaseAUC(nomouse2_meanz);
increase_AUC_no_mouse3z=ShockAnalyzeIncreaseAUC(nomouse3_meanz);
increase_AUC_no_mouse4z=ShockAnalyzeIncreaseAUC(nomouse4_meanz);

increase_AUC_no_mouse21z=ShockAnalyzeIncreaseAUC(nomouse21_meanz);
increase_AUC_no_mouse22z=ShockAnalyzeIncreaseAUC(nomouse22_meanz);
increase_AUC_no_mouse23z=ShockAnalyzeIncreaseAUC(nomouse23_meanz);
increase_AUC_no_mouse24z=ShockAnalyzeIncreaseAUC(nomouse24_meanz);

% AUC of saline peak
increase_AUC_sal_mouse1z=ShockAnalyzeIncreaseAUC(mouse1_meanz);
increase_AUC_sal_mouse2z=ShockAnalyzeIncreaseAUC(mouse2_meanz);
increase_AUC_sal_mouse3z=ShockAnalyzeIncreaseAUC(mouse3_meanz);
increase_AUC_sal_mouse4z=ShockAnalyzeIncreaseAUC(mouse4_meanz);

increase_AUC_sal_mouse21z=ShockAnalyzeIncreaseAUC(mouse21_meanz);
increase_AUC_sal_mouse22z=ShockAnalyzeIncreaseAUC(mouse22_meanz);
increase_AUC_sal_mouse23z=ShockAnalyzeIncreaseAUC(mouse23_meanz);
increase_AUC_sal_mouse24z=ShockAnalyzeIncreaseAUC(mouse24_meanz);

% AUC of ampehtamine peak
increase_AUC_amph_mouse1z=ShockAnalyzeIncreaseAUC(APMHmouse1_meanz);
increase_AUC_amph_mouse2z=ShockAnalyzeIncreaseAUC(APMHmouse2_meanz);
increase_AUC_amph_mouse3z=ShockAnalyzeIncreaseAUC(APMHmouse3_meanz);
increase_AUC_amph_mouse4z=ShockAnalyzeIncreaseAUC(APMHmouse4_meanz);

increase_AUC_amph_mouse21z=ShockAnalyzeIncreaseAUC(APMHmouse21_meanz);
increase_AUC_amph_mouse22z=ShockAnalyzeIncreaseAUC(APMHmouse22_meanz);
increase_AUC_amph_mouse23z=ShockAnalyzeIncreaseAUC(APMHmouse23_meanz);
increase_AUC_amph_mouse24z=ShockAnalyzeIncreaseAUC(APMHmouse24_meanz);

% this accumulates those values in a matrix to be used for analysis in
% Graphpad Prism
no_shock_increase_AUC=[
increase_AUC_no_mouse1z;increase_AUC_no_mouse2z;increase_AUC_no_mouse3z;increase_AUC_no_mouse4z;
increase_AUC_no_mouse21z;increase_AUC_no_mouse22z;increase_AUC_no_mouse23z;increase_AUC_no_mouse24z;
];

saline_increase_AUC=[
increase_AUC_sal_mouse1z;increase_AUC_sal_mouse2z;increase_AUC_sal_mouse3z;increase_AUC_sal_mouse4z;
increase_AUC_sal_mouse21z;increase_AUC_sal_mouse22z;increase_AUC_sal_mouse23z;increase_AUC_sal_mouse24z;
];

amphetamine_increase_AUC=[
increase_AUC_amph_mouse1z;increase_AUC_amph_mouse2z;increase_AUC_amph_mouse3z;increase_AUC_amph_mouse4z;
increase_AUC_amph_mouse21z;increase_AUC_amph_mouse22z;increase_AUC_amph_mouse23z;increase_AUC_amph_mouse24z;
];

%% AUC trough following shocks

% AUC of no shock trough
decrease_AUC_no_mouse1z=ShockAnalyzeDecreaseAUC(nomouse1_meanz);
decrease_AUC_no_mouse2z=ShockAnalyzeDecreaseAUC(nomouse2_meanz);
decrease_AUC_no_mouse3z=ShockAnalyzeDecreaseAUC(nomouse3_meanz);
decrease_AUC_no_mouse4z=ShockAnalyzeDecreaseAUC(nomouse4_meanz);

decrease_AUC_no_mouse21z=ShockAnalyzeDecreaseAUC(nomouse21_meanz);
decrease_AUC_no_mouse22z=ShockAnalyzeDecreaseAUC(nomouse22_meanz);
decrease_AUC_no_mouse23z=ShockAnalyzeDecreaseAUC(nomouse23_meanz);
decrease_AUC_no_mouse24z=ShockAnalyzeDecreaseAUC(nomouse24_meanz);

% AUC of saline trough
decrease_AUC_sal_mouse1z=ShockAnalyzeDecreaseAUC(mouse1_meanz);
decrease_AUC_sal_mouse2z=ShockAnalyzeDecreaseAUC(mouse2_meanz);
decrease_AUC_sal_mouse3z=ShockAnalyzeDecreaseAUC(mouse3_meanz);
decrease_AUC_sal_mouse4z=ShockAnalyzeDecreaseAUC(mouse4_meanz);

decrease_AUC_sal_mouse21z=ShockAnalyzeDecreaseAUC(mouse21_meanz);
decrease_AUC_sal_mouse22z=ShockAnalyzeDecreaseAUC(mouse22_meanz);
decrease_AUC_sal_mouse23z=ShockAnalyzeDecreaseAUC(mouse23_meanz);
decrease_AUC_sal_mouse24z=ShockAnalyzeDecreaseAUC(mouse24_meanz);

% AUC of ampehtamine trough
decrease_AUC_amph_mouse1z=ShockAnalyzeDecreaseAUC(APMHmouse1_meanz);
decrease_AUC_amph_mouse2z=ShockAnalyzeDecreaseAUC(APMHmouse2_meanz);
decrease_AUC_amph_mouse3z=ShockAnalyzeDecreaseAUC(APMHmouse3_meanz);
decrease_AUC_amph_mouse4z=ShockAnalyzeDecreaseAUC(APMHmouse4_meanz);

decrease_AUC_amph_mouse21z=ShockAnalyzeDecreaseAUC(APMHmouse21_meanz);
decrease_AUC_amph_mouse22z=ShockAnalyzeDecreaseAUC(APMHmouse22_meanz);
decrease_AUC_amph_mouse23z=ShockAnalyzeDecreaseAUC(APMHmouse23_meanz);
decrease_AUC_amph_mouse24z=ShockAnalyzeDecreaseAUC(APMHmouse24_meanz);

% this accumulates those values in a matrix to be used for analysis in
% Graphpad Prism
no_shock_decrease_AUC=[
decrease_AUC_no_mouse1z;decrease_AUC_no_mouse2z;decrease_AUC_no_mouse3z;decrease_AUC_no_mouse4z;
decrease_AUC_no_mouse21z;decrease_AUC_no_mouse22z;decrease_AUC_no_mouse23z;decrease_AUC_no_mouse24z;
];

saline_decrease_AUC=[
decrease_AUC_sal_mouse1z;decrease_AUC_sal_mouse2z;decrease_AUC_sal_mouse3z;decrease_AUC_sal_mouse4z;
decrease_AUC_sal_mouse21z;decrease_AUC_sal_mouse22z;decrease_AUC_sal_mouse23z;decrease_AUC_sal_mouse24z;
];

amphetamine_decrease_AUC=[
decrease_AUC_amph_mouse1z;decrease_AUC_amph_mouse2z;decrease_AUC_amph_mouse3z;decrease_AUC_amph_mouse4z;
decrease_AUC_amph_mouse21z;decrease_AUC_amph_mouse22z;decrease_AUC_amph_mouse23z;decrease_AUC_amph_mouse24z;
];

toc