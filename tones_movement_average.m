function [Norm_z_traces] = tones_movement_average(Time,trace)
%this will take a set of tones from 1 mouse on 1 day 

%then will smooth the traces
smooth_traces=movmean(trace,10);

% number of traces
n=size(trace,2);

%then will convert to z-score
z_traces=(smooth_traces);

%then will normalize the trace to the average preCS period
%first make loop that takes the mean of first 20 sec of each tone
preCS_means=zeros(1,n);

for i=1:n
    preCS_means(i)=mean(z_traces(1:200,i),1);
end

%then normalize trace to the preCS mean
Norm_z_traces=zeros(length(z_traces),n);

for i=1:n
    Norm_z_traces(:,i)=z_traces(:,i)-preCS_means(i);
end


%then will average the traces
ZScoreTrace=mean(Norm_z_traces,2);

% calculate SEM
zSEM=std(Norm_z_traces,[],2)/sqrt(size(Norm_z_traces,2));

% plot figure
figure;
shadedErrorBar(Time,ZScoreTrace,zSEM);
% ylim([-2 2]);
xlabel('Time');
ylabel('movement score');
hold on
xline(0);
%xline(29,'r');
xline(30);
xlim([-10 40]);



end

