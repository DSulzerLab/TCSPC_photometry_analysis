function [shock_AUC] = AUC_shocks(traces)
%this will grab the parts of trace and average them

shock_trace=traces(100:200,:);

shock_AUC=trapz(shock_trace);

end

