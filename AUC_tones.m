function [CS_AUC] = AUC_tones(traces)
%this will grab the parts of trace and average them
% preCS_trace=traces(1:2439,:);
CS_trace=traces(200:800,:);

CS_AUC=trapz(CS_trace);

end

