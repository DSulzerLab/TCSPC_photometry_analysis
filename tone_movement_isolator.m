function [average_movement] = tone_movement_isolator(time_trace,movement_trace,tone_times)


i=1;
tone_windows=[];
window_of_interpolation=-10:0.05:40;

for i=1:size(tone_times,1)
    [~,tone_start_time]=min(abs(time_trace-tone_times(i)));
    [~,tone_end_time]=min(abs(time_trace-(tone_times(i)+50)));
    time_trace_interpolated=linspace(time_trace(tone_start_time), time_trace(tone_end_time), size(window_of_interpolation,2));
    gcamp_trace_interpolated=interp1(time_trace(tone_start_time:tone_end_time),movement_trace(tone_start_time:tone_end_time),time_trace_interpolated);
    tone_windows=[tone_windows ; gcamp_trace_interpolated];
end


% get average movement
average_movement=tones_movement_average(window_of_interpolation,transpose(tone_windows));



end