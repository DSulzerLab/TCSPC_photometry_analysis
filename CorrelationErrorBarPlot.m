function [cross_correlation_traces] = CorrelationErrorBarPlot(Time,movement_trace,gcamp_trace)

cross_correlation_traces=[];

for i=1:size(movement_trace,2)
    cross_correlation_traces=[cross_correlation_traces, xcorr(movement_trace(:,i),gcamp_trace(:,i),'coeff')];
end


ZScoreTrace_NoNaN=rmmissing((cross_correlation_traces),2);
% this is me setting up to remove NaN from trace

% mean traces 
average_trace=mean(ZScoreTrace_NoNaN,2);

%also will calculate SEM
zSEM=std(ZScoreTrace_NoNaN,[],2)/sqrt(size(ZScoreTrace_NoNaN,2));


%also plot figure
% 
% figure;
% shadedErrorBar(Time,average_trace,zSEM);
% ylabel('Pearsons R');
% xlabel('Time');
% % ylim([-1 1]);
% yticks([-1:0.2:1]);
% xline(0,'b','LineWidth',2);
% % xlim([-4 4]);
% xticks([-50:5:50]);
% set(gca,'FontSize',40);

% find r value when traces are perfectly alighed
% time point 0 in the cross corelation is cell 505

alighned_pearson_R=[];
i=1;
while i<=size(ZScoreTrace_NoNaN,2)
    alighned_pearson_R=[alighned_pearson_R ZScoreTrace_NoNaN(505,i)];
    i=i+1;
end

end

