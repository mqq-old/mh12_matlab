% Intrinsic and Extrinsic Camera Parameters
%
% This script file can be directly executed under Matlab to recover the camera intrinsic and extrinsic parameters.
% IMPORTANT: This file contains neither the structure of the calibration objects nor the image coordinates of the calibration points.
%            All those complementary variables are saved in the complete matlab data file Calib_Results.mat.
% For more information regarding the calibration model visit http://www.vision.caltech.edu/bouguetj/calib_doc/


%-- Focal length:
fc = [ 531.953836129320621 ; 532.735167795630559 ];

%-- Principal point:
cc = [ 481.588099482663608 ; 260.747828433421830 ];

%-- Skew coefficient:
alpha_c = 0.000000000000000;

%-- Distortion coefficients:
kc = [ -0.056197699378219 ; 0.399737736834387 ; -0.001474876354616 ; 0.002213412488038 ; 0.000000000000000 ];

%-- Focal length uncertainty:
fc_error = [ 10.065543815458579 ; 9.714632879552228 ];

%-- Principal point uncertainty:
cc_error = [ 7.661034097528520 ; 6.384476208353010 ];

%-- Skew coefficient uncertainty:
alpha_c_error = 0.000000000000000;

%-- Distortion coefficients uncertainty:
kc_error = [ 0.056578693503310 ; 0.734826728322545 ; 0.003191492191731 ; 0.004307946174976 ; 0.000000000000000 ];

%-- Image size:
nx = 960;
ny = 540;


%-- Various other variables (may be ignored if you do not use the Matlab Calibration Toolbox):
%-- Those variables are used to control which intrinsic parameters should be optimized

n_ima = 16;						% Number of calibration images
est_fc = [ 1 ; 1 ];					% Estimation indicator of the two focal variables
est_aspect_ratio = 1;				% Estimation indicator of the aspect ratio fc(2)/fc(1)
center_optim = 1;					% Estimation indicator of the principal point
est_alpha = 0;						% Estimation indicator of the skew coefficient
est_dist = [ 1 ; 1 ; 1 ; 1 ; 0 ];	% Estimation indicator of the distortion coefficients


%-- Extrinsic parameters:
%-- The rotation (omc_kk) and the translation (Tc_kk) vectors for every calibration image and their uncertainties

%-- Image #1:
omc_1 = [ -2.148105e+00 ; -2.283194e+00 ; 2.558985e-01 ];
Tc_1  = [ -1.556871e+02 ; 2.112809e+00 ; 1.045608e+03 ];
omc_error_1 = [ 1.093543e-02 ; 1.142714e-02 ; 2.445337e-02 ];
Tc_error_1  = [ 1.502693e+01 ; 1.257113e+01 ; 1.993003e+01 ];

%-- Image #2:
omc_2 = [ 2.115694e+00 ; 2.273349e+00 ; -2.792452e-01 ];
Tc_2  = [ -1.659578e+02 ; -2.453145e+01 ; 9.844588e+02 ];
omc_error_2 = [ 8.958662e-03 ; 1.074368e-02 ; 2.319976e-02 ];
Tc_error_2  = [ 1.414299e+01 ; 1.182382e+01 ; 1.879946e+01 ];

%-- Image #3:
omc_3 = [ 2.026619e+00 ; 2.295459e+00 ; -3.081962e-01 ];
Tc_3  = [ -1.853352e+02 ; -5.173521e+01 ; 9.196339e+02 ];
omc_error_3 = [ 7.432922e-03 ; 1.063949e-02 ; 2.188760e-02 ];
Tc_error_3  = [ 1.321407e+01 ; 1.103980e+01 ; 1.766536e+01 ];

%-- Image #4:
omc_4 = [ -2.000746e+00 ; -2.235456e+00 ; 4.481003e-01 ];
Tc_4  = [ -1.765916e+02 ; -5.042583e+01 ; 9.363014e+02 ];
omc_error_4 = [ 1.021538e-02 ; 9.337748e-03 ; 2.076872e-02 ];
Tc_error_4  = [ 1.344513e+01 ; 1.124216e+01 ; 1.744378e+01 ];

%-- Image #5:
omc_5 = [ 1.932114e+00 ; 2.170866e+00 ; -5.180509e-02 ];
Tc_5  = [ -1.707076e+02 ; -5.810977e+01 ; 8.844224e+02 ];
omc_error_5 = [ 8.639656e-03 ; 1.071891e-02 ; 2.087761e-02 ];
Tc_error_5  = [ 1.275457e+01 ; 1.061363e+01 ; 1.695250e+01 ];

%-- Image #6:
omc_6 = [ 1.844993e+00 ; 1.963252e+00 ; -5.539822e-01 ];
Tc_6  = [ -1.890909e+02 ; -2.949827e+01 ; 9.579922e+02 ];
omc_error_6 = [ 6.612357e-03 ; 1.079192e-02 ; 1.907620e-02 ];
Tc_error_6  = [ 1.378128e+01 ; 1.152005e+01 ; 1.808309e+01 ];

%-- Image #7:
omc_7 = [ 2.147604e+00 ; 2.184726e+00 ; -9.568970e-02 ];
Tc_7  = [ -1.921330e+02 ; -3.811520e+01 ; 8.774224e+02 ];
omc_error_7 = [ 9.903658e-03 ; 1.108747e-02 ; 2.348554e-02 ];
Tc_error_7  = [ 1.264477e+01 ; 1.055518e+01 ; 1.692018e+01 ];

%-- Image #8:
omc_8 = [ 2.185082e+00 ; 2.225252e+00 ; -2.405918e-02 ];
Tc_8  = [ -1.906553e+02 ; -2.526638e+01 ; 9.686386e+02 ];
omc_error_8 = [ 1.201819e-02 ; 1.234415e-02 ; 2.695642e-02 ];
Tc_error_8  = [ 1.396382e+01 ; 1.168662e+01 ; 1.871383e+01 ];

%-- Image #9:
omc_9 = [ 1.997224e+00 ; 2.118718e+00 ; 1.241379e-01 ];
Tc_9  = [ -1.773012e+02 ; -3.325566e+01 ; 9.407025e+02 ];
omc_error_9 = [ 1.053688e-02 ; 1.083415e-02 ; 2.220167e-02 ];
Tc_error_9  = [ 1.357299e+01 ; 1.132787e+01 ; 1.809580e+01 ];

%-- Image #10:
omc_10 = [ -2.171603e+00 ; -2.179641e+00 ; 4.678580e-01 ];
Tc_10  = [ -1.941683e+02 ; -1.532002e+01 ; 1.003315e+03 ];
omc_error_10 = [ 1.093752e-02 ; 8.662861e-03 ; 2.149542e-02 ];
Tc_error_10  = [ 1.440988e+01 ; 1.206076e+01 ; 1.878166e+01 ];

%-- Image #11:
omc_11 = [ 1.862090e+00 ; 1.862195e+00 ; -6.009791e-01 ];
Tc_11  = [ -2.023719e+02 ; -1.456096e+00 ; 1.029046e+03 ];
omc_error_11 = [ 6.939828e-03 ; 1.071063e-02 ; 1.879981e-02 ];
Tc_error_11  = [ 1.480889e+01 ; 1.239457e+01 ; 1.936431e+01 ];

%-- Image #12:
omc_12 = [ 2.108963e+00 ; 2.093515e+00 ; -7.580951e-01 ];
Tc_12  = [ -1.884205e+02 ; 3.175844e+01 ; 1.149233e+03 ];
omc_error_12 = [ 6.074327e-03 ; 1.075636e-02 ; 2.136625e-02 ];
Tc_error_12  = [ 1.651183e+01 ; 1.380639e+01 ; 2.108365e+01 ];

%-- Image #13:
omc_13 = [ 1.796179e+00 ; 2.004965e+00 ; -1.997844e-01 ];
Tc_13  = [ -1.717275e+02 ; 1.466286e+00 ; 1.079880e+03 ];
omc_error_13 = [ 7.879904e-03 ; 1.049143e-02 ; 1.926434e-02 ];
Tc_error_13  = [ 1.555960e+01 ; 1.300284e+01 ; 2.075172e+01 ];

%-- Image #14:
omc_14 = [ 1.875749e+00 ; 1.748442e+00 ; -6.860462e-01 ];
Tc_14  = [ -2.202419e+02 ; 4.095905e+01 ; 1.107715e+03 ];
omc_error_14 = [ 7.227404e-03 ; 1.062918e-02 ; 1.844430e-02 ];
Tc_error_14  = [ 1.595243e+01 ; 1.336959e+01 ; 2.074796e+01 ];

%-- Image #15:
omc_15 = [ 2.249268e+00 ; 2.151833e+00 ; -6.514829e-02 ];
Tc_15  = [ -2.000904e+02 ; 3.154730e+01 ; 1.039576e+03 ];
omc_error_15 = [ 1.347567e-02 ; 1.261015e-02 ; 2.789951e-02 ];
Tc_error_15  = [ 1.499560e+01 ; 1.257931e+01 ; 2.009747e+01 ];

%-- Image #16:
omc_16 = [ 2.019572e+00 ; 1.998493e+00 ; -4.540041e-01 ];
Tc_16  = [ -1.244472e+02 ; 7.678455e-01 ; 1.017515e+03 ];
omc_error_16 = [ 7.367589e-03 ; 9.796423e-03 ; 2.057943e-02 ];
Tc_error_16  = [ 1.464036e+01 ; 1.220834e+01 ; 1.914461e+01 ];

