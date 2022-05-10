function [average_trace] = ErrorBarPlot(Time,ZScoreTrace)

% mean traces 
average_trace=mean(ZScoreTrace,2);

%also will calculate SEM
zSEM=std(ZScoreTrace,[],2)/sqrt(size(ZScoreTrace,2));

%also plot figure
%figure;
% ,'lineprops',{'b','markerfacecolor','k'}
shadedErrorBar(Time,average_trace,zSEM);
ylim([-1 2]);
xlabel('Time');
ylabel('z score');
hold on
xline(0);
xline(30);
% xlim([-20 40]);

end

