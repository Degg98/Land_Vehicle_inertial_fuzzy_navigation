%% MEDIA DEGLI ERRORI
clc

load('riferimenti.mat')
load('Dynamics_aided_9_11_2022.mat')
load("Estimated_trajectory_9_11_2022.mat")
load("True_trajectory.mat")
load("Unaided_trajectory_9_11_2022.mat")


l = length(dynamics_aids);
% Estraggo le componenti di posizione
j = 1;
for i=1:l
    % Estraggo i ground truth
    Vf_gt(j) = ground_truth(2,i);
    phi_gt(j) = ground_truth(3,i);
    theta_gt(j) = ground_truth(4,i);
    psi_gt(j) = ground_truth(5,i);
    wz_gt(j) = ground_truth(8,i);
    % Estraggo le grandezze stimate
    Vf_da(j) = dynamics_aids(2,i);
    phi_da(j) = dynamics_aids(3,i);
    theta_da(j) = dynamics_aids(4,i);
    psi_da(j) = dynamics_aids(5,i);
    % Estraggo la traiettoria esatta
    x_true(j) = true_traj(2,i);
    y_true(j) = true_traj(3,i);
    % Estraggo la traiettoria stimata
    x_est(j) = est_traj(2,i);
    y_est(j) = est_traj(3,i);
    % Estraggo la traiettoria unaided
    x_unaided(j) = unaided_traj(2,i);
    y_unaided(j) = unaided_traj(3,i);
    j = j + 1;
end

Vf_error_mean = mean(Vf_gt - Vf_da);
Roll_error_mean = mean(phi_gt - phi_da);
Pitch_error_mean = mean(theta_gt - theta_da);
Yaw_error_mean = mean(psi_gt - psi_da);

% x_error_mean = mean(abs(x_true - x_est));
% y_error_mean = mean(abs(y_true - y_est));
% x_unaided_error_mean = mean(abs(x_true - x_unaided));
% y_unaided_error_mean = mean(abs(y_true - y_unaided));

x_error_max = max(abs(x_true - x_est));
x_error_std = std(x_true - x_est);
y_error_max = max(abs(y_true - y_est));
y_error_std = std(y_true - y_est);
x_unaided_error_max = max(abs(x_true - x_unaided));
x_unaided_error_std = std(x_true - x_unaided);
y_unaided_error_max = max(abs(y_true - y_unaided));
y_unaided_error_std = std(y_true - y_unaided);



Vf_error_mean 
Roll_error_mean 
Pitch_error_mean
Yaw_error_mean

x_error_max
x_error_std
y_error_max
y_error_std
x_unaided_error_max
x_unaided_error_std
y_unaided_error_max
y_unaided_error_std


