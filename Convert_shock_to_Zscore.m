function [Norm_z_traces] = Convert_shock_to_Zscore(Time,trace)

% This will smooth the traces to a 1.5 second time window
smooth_traces=movmean(trace,30);

% This puts number of traces into a variable
n=size(trace,2);

% This will convert smoothed traces to z-score
z_traces=zscore(smooth_traces);

% This for loop will accumulate the average z-score of a 5 seconds pre shock period
preShock_means=zeros(1,n);

for i=1:n
    preShock_means(i)=mean(z_traces(1:100,i),1);
end

% This will normalize traces by subtracting pre shock means
Norm_z_traces=zeros(length(z_traces),n);

for i=1:n
    Norm_z_traces(:,i)=z_traces(:,i)-preShock_means(i);
end

% this will average the normalized traces
ZScoreTrace=mean(Norm_z_traces,2);

% this will calculate SEM for average z scored trace
zSEM=std(Norm_z_traces,[],2)/sqrt(size(Norm_z_traces,2));

%% this section allows the function to plot the z-scored trace. But is commented out to allow for a faster running code. They can be commented back in to view the figures.

% % this will plot figure
% figure;
% shadedErrorBar(Time,ZScoreTrace,zSEM);
% 
% % this will label the axes of the figure
% xlabel('Time');
% ylabel('z score');
% 
% % this will add lines indicating onset and offset of shock
% hold on
% xline(0);
% xline(1);
% 
% % this will set limits on the y and x axis 
% xlim([-5 10]);
% ylim([-5 2]);
% 
% % this makes the font thicker
% set(gca,'FontSize',20);


end

