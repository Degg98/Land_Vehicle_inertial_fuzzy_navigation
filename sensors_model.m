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


%% Init fuzzy identification
load('FUZZY.mat')
load('Measure_collection.mat')

n = 2;