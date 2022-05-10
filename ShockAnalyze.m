
function [output] = ShockAnalyze(traces)
%this will put shock time window into a variable
Shocktrace=traces(100:200,:);

%this will take area under curve of shock trace
AUC=trapz(Shocktrace);

%this will take max amplitude
maxAmplitude=max(Shocktrace);

%this will take min amplitude
minAmplitude=min(Shocktrace);

output=[AUC, minAmplitude, maxAmplitude];
end

%this will caclulate the average z score as well as Area under curve (5
%seconds after shock onset) and also max amplitude