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
Vf_des_1 = [0, 0, 0, 0, 0, 4, 10, 4.3, 3.5, 5, 7, 4, 0, 0, 0, 0, 0];
Vf_des_2 = [0, 0, 0, 0, 0, 4, 10, 4.3, 3.5, 5, 7, 4, 0, 0, 0, 0, 0];
Vf_des_3 = [0, 0, 0, 0, 0, 4, 10, 4.3, 3.5, 5, 7, 4, 0, 0, 0, 0, 0];
Vf_des_4 = [0, 0, 0, 0, 0, 4, 10, 4.3, 3.5, 5, 7, 4, 0, 0, 0, 0, 0];
Vf_des_5 = [0, 0, 0, 0, 0, 4, 10, 4.3, 3.5, 5, 7, 4, 0, 0, 0, 0, 0];
Vf_des = [Vf_des_1, Vf_des_2, Vf_des_3, Vf_des_4, Vf_des_5];

wz_des_1 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.65, 0, 0, 0, 0, 0, 0, 0, 0, 0];
wz_des_2 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.65, 0, 0, 0, 0, 0, 0, 0, 0, 0];
wz_des_3 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.65, 0, 0, 0, 0, 0, 0, 0, 0, 0];
wz_des_4 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.65, 0, 0, 0, 0, 0, 0, 0, 0, 0];
wz_des_5 = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -0.65, 0, 0, 0, 0, 0, 0, 0, 0, 0];
wz_des = [wz_des_1, wz_des_2, wz_des_3, wz_des_4, wz_des_5];

%% Init fuzzy identification
load('FUZZY.mat')
load('Measure_collection.mat')

n = 2;