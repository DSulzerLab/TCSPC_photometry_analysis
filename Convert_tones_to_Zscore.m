function [Norm_z_traces] = Convert_tones_to_Zscore(Time,trace)

% will smooth the traces
smooth_traces=movmean(trace,20);

% number of traces
n=size(trace,2);

%then will convert to z-score
z_traces=zscore(smooth_traces);

%then will normalize the trace to the average z-score of preCS period
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


ZScoreTrace=mean(Norm_z_traces,2);

% get AUC's
AUCs=zeros(1,n);

for i=1:n
    AUCs(i)=AUC_tones(Norm_z_traces(:,i));
end


%also will calculate SEM
zSEM=std(Norm_z_traces,[],2)/sqrt(size(Norm_z_traces,2));

%also plot figure
figure;
shadedErrorBar(Time,ZScoreTrace,zSEM);
ylim([-1.5 1.5]);
xlabel('Time');
ylabel('z score');
hold on
xline(0);
xline(30);
xlim([-10 40]);
set(gca,'FontSize',40);

end

