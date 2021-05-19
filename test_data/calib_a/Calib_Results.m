% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 529.857542094651421 ; 531.307277442206441 ];

%-- Principal point:
cc = [ 470.697305223064063 ; 264.282257887358526 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.017177315660608 ; -0.260352734561297 ; -0.005150398542465 ; -0.006212412278013 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 13.100729731704293 ; 12.926654524458025 ];

%-- Principal point uncertainty:
cc_error = [ 13.445766186112843 ; 9.715455376779119 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.121375396242532 ; 2.360515035059460 ; 0.006318347748587 ; 0.007465668409198 ; 0.000000000000000 ];

%-- Image size:
nx = 960;
ny = 540;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 12;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ 2.049506e+00 ; 2.338367e+00 ; -3.489056e-01 ];
Tc_1  = [ -1.243958e+02 ; -4.756957e+01 ; 1.094716e+03 ];
omc_error_1 = [ 1.275968e-02 ; 1.757542e-02 ; 3.399204e-02 ];
Tc_error_1  = [ 2.769351e+01 ; 1.997606e+01 ; 2.722492e+01 ];

%-- Image #2:
omc_2 = [ -1.911348e+00 ; -2.130714e+00 ; -2.080665e-03 ];
Tc_2  = [ -1.308382e+02 ; -5.330256e+01 ; 1.047164e+03 ];
omc_error_2 = [ 1.391159e-02 ; 1.926443e-02 ; 3.317841e-02 ];
Tc_error_2  = [ 2.654259e+01 ; 1.916297e+01 ; 2.662314e+01 ];

%-- Image #3:
omc_3 = [ 1.815033e+00 ; 1.999893e+00 ; -7.065997e-01 ];
Tc_3  = [ -1.465413e+02 ; 1.480625e+01 ; 1.091041e+03 ];
omc_error_3 = [ 9.960360e-03 ; 1.800453e-02 ; 3.079146e-02 ];
Tc_error_3  = [ 2.763992e+01 ; 1.996686e+01 ; 2.644707e+01 ];

%-- Image #4:
omc_4 = [ -2.079539e+00 ; -2.097791e+00 ; 9.244293e-01 ];
Tc_4  = [ -1.299163e+02 ; 1.736232e+01 ; 1.116270e+03 ];
omc_error_4 = [ 2.205178e-02 ; 1.315002e-02 ; 3.052040e-02 ];
Tc_error_4  = [ 2.823225e+01 ; 2.037842e+01 ; 2.613042e+01 ];

%-- Image #5:
omc_5 = [ 1.883675e+00 ; 2.067592e+00 ; -2.080588e-01 ];
Tc_5  = [ -1.573272e+02 ; -2.352309e+00 ; 1.049520e+03 ];
omc_error_5 = [ 1.216156e-02 ; 1.610612e-02 ; 3.246949e-02 ];
Tc_error_5  = [ 2.666121e+01 ; 1.922007e+01 ; 2.634543e+01 ];

%-- Image #6:
omc_6 = [ 1.981167e+00 ; 2.237750e+00 ; -4.120474e-01 ];
Tc_6  = [ -1.402623e+02 ; -7.203262e+01 ; 1.014229e+03 ];
omc_error_6 = [ 1.063047e-02 ; 1.741087e-02 ; 3.357147e-02 ];
Tc_error_6  = [ 2.568143e+01 ; 1.850485e+01 ; 2.539300e+01 ];

%-- Image #7:
omc_7 = [ 1.934156e+00 ; 2.219836e+00 ; -4.299108e-01 ];
Tc_7  = [ -1.482157e+02 ; -4.414724e+01 ; 1.102882e+03 ];
omc_error_7 = [ 1.063308e-02 ; 1.760910e-02 ; 3.309924e-02 ];
Tc_error_7  = [ 2.792154e+01 ; 2.014685e+01 ; 2.744066e+01 ];

%-- Image #8:
omc_8 = [ 2.077255e+00 ; 2.245169e+00 ; -3.151597e-01 ];
Tc_8  = [ -1.621981e+02 ; -1.740556e+01 ; 1.185945e+03 ];
omc_error_8 = [ 1.413992e-02 ; 1.823754e-02 ; 3.479488e-02 ];
Tc_error_8  = [ 3.002107e+01 ; 2.168947e+01 ; 2.961583e+01 ];

%-- Image #9:
omc_9 = [ -2.062180e+00 ; -2.181251e+00 ; 6.700886e-01 ];
Tc_9  = [ -1.542586e+02 ; -1.472340e+01 ; 1.218930e+03 ];
omc_error_9 = [ 1.996186e-02 ; 1.440380e-02 ; 3.171660e-02 ];
Tc_error_9  = [ 3.082431e+01 ; 2.228062e+01 ; 2.938519e+01 ];

%-- Image #10:
omc_10 = [ 1.925130e+00 ; 2.243832e+00 ; 6.164239e-02 ];
Tc_10  = [ -1.727625e+02 ; -2.476661e+01 ; 1.127529e+03 ];
omc_error_10 = [ 1.668026e-02 ; 1.906113e-02 ; 4.105127e-02 ];
Tc_error_10  = [ 2.864138e+01 ; 2.067441e+01 ; 2.848402e+01 ];

%-- Image #11:
omc_11 = [ -2.154580e+00 ; -2.272187e+00 ; 1.101799e-01 ];
Tc_11  = [ -1.908811e+02 ; 6.617345e+00 ; 1.184659e+03 ];
omc_error_11 = [ 2.019761e-02 ; 2.178945e-02 ; 3.989572e-02 ];
Tc_error_11  = [ 3.007111e+01 ; 2.176083e+01 ; 2.983134e+01 ];

%-- Image #12:
omc_12 = [ 1.784605e+00 ; 1.779986e+00 ; -7.449765e-01 ];
Tc_12  = [ -1.919334e+02 ; 5.100723e+01 ; 1.241677e+03 ];
omc_error_12 = [ 1.132524e-02 ; 1.834904e-02 ; 2.987793e-02 ];
Tc_error_12  = [ 3.151892e+01 ; 2.278519e+01 ; 3.028244e+01 ];

