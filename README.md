# TCSPC_photometry_analysis

Analysis of Time Correlated Single Photon Counting (TCSPC) data used for analyzing GrabNE flourescence during fear conditioning


1. System requirements

Code is run in Matlab2021b.
Code has been tested on a windows 11 operating system.

2. Instalation guide

Matlab instalation instructions can be found at: https://www.mathworks.com/help/install/install-products.html

3. Demo

Data is present in excel sheets that contain entire trace as well as columns that contain only portions of the trace contraining tone or shock.
Code will output variables containing AUC, maximum amplitude, and zscored traces for all tones and shocks. Code will also produce figures of average tone and shock traces that are present in the manuscript.
Code has a run time of ~15-30 seconds if figures for each mouse is suppressed. 

4. Instructions

All function codes and excel files must be present in the same folder as the matlab code.
Code must be opened in Matlab2021b.
Code entitled "GrabNE_fear_conditioning" will produce data related to tones and shocks that occured during conditioning and recall.
Code entitled "GrabNE_Amphetamine_shock" will produce data related to shocks given after injection of saline or amphetamine.
Clicking "run" will run the code and all variables and figures will be produced.
If you wish to view each mouses photometry trace, uncomment the figure section in the functions "Convert_tones_to_Zscore" and "Convert_shock_to_Zscore".


