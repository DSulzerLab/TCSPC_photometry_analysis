# TCSPC_photometry_analysis

Analysis of Time Correlated Single Photon Counting (TCSPC) data used for Stanley 2023 et al. "Norepinephrine release in the cerebellum contributes to aversive learning"

1. System requirements

Code is run in Matlab2021b.
Code has been tested on a windows 11 operating system.

2. Instalation guide

MATLAB instalation instructions can be found at: https://www.mathworks.com/help/install/install-products.html

3. Demo

Data is present in excel sheets that contain entire fluorescence trace as well as separate columns for the individual shock and tone events. This data for every mouse can be found at ...

The MATLAB script code "CB_GrabNE_final_code_Nature.m" will output variables containing AUC, maximum amplitude, and zscored traces for all tone and shock periods that occurred during cued fear conditioning and recall. The script requires the functions "Convert_tones_to_Zscore.m", "Convert_shock_to_Zscore.m", "AUC_tones.m", "AUC_shocks.m", "tone_movement_isolator.m", "tones_movement_average.m", "CorrelationErrorBarPlot.m", "shadedErrorBar.m", "waveform_analyzer.m" and "waveform_analyzer_movement_overlap.m" to produce figures of average tone and shock traces that are present in the manuscript. The MATLAB script has a run time of ~30 seconds. 

The MATLAB script code "GrabNE_Amphetamine_shock.m" requires the functions  "Convert_shock_to_Zscore.m", "AUC_shocks.m", and "shadedErrorBar.m" to produce figures of average shock traces that are present in the manuscript. The MATLAB script has a run time of ~20 seconds.

4. Instructions

All relevant function codes and excel files must be present in the same folder as the MATLAB script. Code must be opened in Matlab2021b. The script entitled "CB_GrabNE_final_code_Nature.m" will produce data related to tones and shocks that occurred during conditioning and recall. The script entitled "GrabNE_Amphetamine_shock.m" will produce data related to shocks given after injection of saline or amphetamine.
