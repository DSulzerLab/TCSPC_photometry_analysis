function [AverageZofAverage] = averageCSeachtone(trace)
%this functin takes average Z score for preCS of each tone and gives the
%average z-score or AUC

% This smooths the traces by 3 second window
smooth_traces=movmedian(trace,60);

% This puts number of traces into a variable
n=size(trace,2);

% This converts the smoothed traces to z-score
z_traces=zscore(smooth_traces);

% This for loop accumulates preCS means to be used for normalization
preCS_means=zeros(1,n);

for i=1:n
    preCS_means(i)=mean(z_traces(1:200,i),1);
end

% This for loop subtracts preCS mean values from thier respective traces
Norm_z_traces=zeros(length(z_traces),n);

for i=1:n
    Norm_z_traces(:,i)=z_traces(:,i)-preCS_means(i);
end

% This for loop computes AUC for each trace and accumulates them
AvgCS=[];

for i=1:n
    AvgCS(i)=trapz(Norm_z_traces(200:800,i),1);
end

% this will average all the AUC's together
AverageZofAverage=mean(AvgCS);

% ZScoreTrace=mean(Norm_z_traces,2);

end
