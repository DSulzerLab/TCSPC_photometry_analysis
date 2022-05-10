function [average_trace] = ShockErrorBarPlot(Time,ZScoreTrace)

% mean traces 
average_trace=mean(ZScoreTrace,2);

%also will calculate SEM
zSEM=std(ZScoreTrace,[],2)/sqrt(size(ZScoreTrace,2));

%also plot figure
figure;
shadedErrorBar(Time,average_trace,zSEM);
ylim([-2.5 1]);
xlabel('Time');
ylabel('z score');
hold on
xline(0);
xline(1);
xlim([-5 10]);

end

