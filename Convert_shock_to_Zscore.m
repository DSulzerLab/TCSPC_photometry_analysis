function [ZScoreTrace] = Convert_shock_to_Zscore(Time,trace)

%then will smooth the traces
smooth_traces=movmean(trace,20);

% number of traces
n=size(trace,2);

%then will convert to z-score
z_traces=zscore(smooth_traces);

%then will normalize the trace to the average z-score of preCS period
%first make loop that takes the mean of first 5 sec of each shock
preCS_means=zeros(1,n);

for i=1:n
    preCS_means(i)=mean(z_traces(1:100,i),1);
end

%then normalize trace to the pre-shock mean
Norm_z_traces=zeros(length(z_traces),n);

for i=1:n
    Norm_z_traces(:,i)=z_traces(:,i)-preCS_means(i);
end

ZScoreTrace=mean(Norm_z_traces,2);

AUC_average_trace=AUC_shocks(ZScoreTrace);

% will calculate SEM
zSEM=std(Norm_z_traces,[],2)/sqrt(size(Norm_z_traces,2));

%also plot figure
figure;
shadedErrorBar(Time,ZScoreTrace,zSEM);
ylim([-1 2]);
xlabel('Time');
ylabel('z score');
hold on
xline(0);
xline(2);
xlim([-5 10]);
set(gca,'FontSize',40);

%output=[AUC_average_trace, MaxAmp_average_trace];


end

