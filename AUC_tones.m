function [CS_AUC] = AUC_tones(traces)
%this will grab the parts of trace and average them
% preCS_trace=mean(traces(1:2439,:),2);
% CS_trace=mean(traces(2439:4878,:),2);

%this takes 18 sec of preCS an 18 sec of CS
% preCS_trace=mean(traces(244:2439,:),2);
CS_trace=mean(traces(200:800,:),2);

%this will isolate the 2 sec onset and 5-18 sec later part of tone
% CS_trace_onset=mean(traces(200:270,:),2);
% CS_trace_later=mean(traces(271:800,:),2);

%this will take area under curve of preCS CS and postCS
% preCS_AUC=trapz(preCS_trace);
CS_AUC=trapz(CS_trace);
% CS_AUC_onset=trapz(CS_trace_onset);
% CS_AUC_later=trapz(CS_trace_later);

%then subtract preCS from CS %and subtract preCS from postCS
% CS_AUC_diff=CS_AUC-preCS_AUC;

% output=[CS_AUC_onset,CS_AUC_later];


end

