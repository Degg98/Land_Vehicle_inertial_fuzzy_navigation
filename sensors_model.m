%% Sensors Init Parameters

% Accelerometer
Ba = 0.02*ones(3,1); % m/s^2
SFa = 0.05;
MISa = 0.1; % deg
stdv_a = 0.0055; % standard deviation
Wna = stdv_a*randn(3,1); % White Noise

% Gyros
Bg = 5*ones(3,1) ; % deg/s
SFg = 0;
MISg = 0.1; % deg
stdv_g = 0.6325; % standard deviation
Wng = stdv_g*randn(3,1); % White Noise

%% Init motion trajectory
% Forward velocity (Abx)
Vf_des_1 = [0, 0, 0, 0, 0, 0, 0, 4, 8.5, 5, 4, 5, 7, 4, 0, 0, 0];
Vf_des_2 = [0, 0, 0, 0, 4, 8, 6, 4.5, 5.5, 7.5, 3.5, 6.5, 4, 0, 0];
Vf_des_3 = [0, 0, 0, 0, 0, 4, 6, 9, 6, 4, 5.3, 6, 6.5, 5, 5.3, 8, 6.5, 4, 0];
Vf_des_4 = [0, 0, 0, 0, 0, 0, 4, 9, 6, 4.5, 5.5, 8, 4.5, 4.7, 4.7, 6.8, 4, 0, 0];
Vf_des_5 = [0, 0, 0, 0, 0, 0, 6, 10, 3.3, 7, 9.5, 4, 0, 0, 0, 0, 0];
Vf_des = [Vf_des_1, Vf_des_2, Vf_des_3, Vf_des_4, Vf_des_5];
% Angular velocity (wbz)
wz_des_1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.7, 0, 0, 0, 0, 0, 0, 0];
wz_des_2 = [0, 0, 0, 0, 0, 0, -0.45, 0, 0, 0, -0.45, 0, 0, 0];
wz_des_3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.7, 0, 0, 0, 0, 0.7, 0, 0, 0, 0];
wz_des_4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.7, 0, 0, 0, -0.65, 0, 0, 0, 0, 0];
wz_des_5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.6, 0, 0, 0, 0, 0, 0, 0, 0, 0];
wz_des = [wz_des_1, wz_des_2, wz_des_3, wz_des_4, wz_des_5];

%% Init fuzzy identification
load('FUZZY.mat')
load('Measure_collection.mat')

n = 2;