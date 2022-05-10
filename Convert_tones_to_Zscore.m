function [Norm_z_traces] = Convert_tones_to_Zscore(Time,trace)
% This function will take a set of tones 

%then will smooth the photometry traces with a 3 second time window (each cell is 0.05 seconds which means 60 cells = 3 seconds)
smooth_traces=movmean(trace,60);

% This puts the total number of traces into a variable
n=size(trace,2);

% This will convert the smoothed traces to z-score
z_traces=zscore(smooth_traces);

% This will normalize the trace to the average z-score of preCS period
% First, this will create variable to accumulate average z-score for preCS
% period
preCS_means=zeros(1,n);

% This for loop that takes the mean of first 20 sec of each tone and add
% them to the "preCS_means" variable
for i=1:n
    preCS_means(i)=mean(z_traces(1:200,i),1);
end

% This creates a variable to add normalized traces to
Norm_z_traces=zeros(length(z_traces),n);

% This for loop normalizes the traces to the mean preCS z-score by
% subtracting the mean preCS value of each trace from the each trace
for i=1:n
    Norm_z_traces(:,i)=z_traces(:,i)-preCS_means(i);
end

% This will average the normalized z-score traces
ZScoreTrace=mean(Norm_z_traces,2);

% This will calculate SEM for the averaged z-scored trace
zSEM=std(Norm_z_traces,[],2)/sqrt(size(Norm_z_traces,2));

%% this section allows the function to plot the z-scored trace. But is commented out to allow for a faster running code. They can be commented back in to view the figures.
% % This will plot figure using "shaddedErrorBar" function (created by Rob
% % Campbell - November 2009)
% figure;
% shadedErrorBar(Time,ZScoreTrace,zSEM);
% 
% % This labels axis of the figures
% xlabel('Time');
% ylabel('z score');
% 
% % This generates lines on figure that indicate start and stop of tone
% hold on
% xline(0);
% xline(30);
% 
% % This sets the limits on the y and x axis
% ylim([-3 3]);
% xlim([-10 40]);
% 
% % This makes the font a little thicker
% set(gca,'FontSize',20);
% 
% % This sets an interval for tick marks on the x axis
% xticks([-10:5:40]);


end

