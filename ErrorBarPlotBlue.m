function [average_trace] = ErrorBarPlotBlue(Time,ZScoreTrace)

% mean traces 
average_trace=mean(ZScoreTrace,2);

%also will calculate SEM
zSEM=std(ZScoreTrace,[],2)/sqrt(size(ZScoreTrace,2));

%also plot figure
%figure;
shadedErrorBar(Time,average_trace,zSEM,'lineprops',{'b','markerfacecolor','k'});
ylim([-1 2]);
xlabel('Time');
ylabel('z score');
hold on
xline(0);
xline(30);

end

