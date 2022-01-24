%% Script to generate spectra from solar elevation
% Written by Manuel Spitschan, manuel.spitschan@tuebingen.mpg.de
%
% Spitschan M, Aguirre GK, Brainard DH & Sweeney AM (2016). Variation of
% outdoor illumination as a function of solar elevation and light
% pollution. Scientific Reports 6, 26756. doi:10.1038/srep26756.

% Load basis functions
load B_CIE3x.mat

% Load weights
M = csvread('w_CIE3R.csv')

% Extract solar elevation
solarElevationDeg = M(:, 1);

% Extract variables
wls = wls_CIE3R;
B = [ones(471, 1) B_CIE3R]; % Add absolute irradiance
w = M(:, 2:2:end);

% Put it all together
solarElevationIdx = 2; % Corresponds to -26 deg ec.
<<<<<<< HEAD
plot(wls, B*w(solarElevationIdx, :)');
=======
plot(B*w(solarElevationIdx, :)');
>>>>>>> 816aa3b52a5de7d6bbba7b5d06cd975dad1309e2
