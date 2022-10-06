close all
clc

load('riferimenti.mat')
load('Dynamics_aided.mat')



%% PLOT DATI
l = length(dynamics_aids);
% Estraggo le componenti di posizione
j = 1;
for i=1:l
    % Estraggo i ground truth
    Vf_gt(j) = ground_truth(2,i);
    phi_gt(j) = ground_truth(3,i);
    theta_gt(j) = ground_truth(4,i);
    psi_gt(j) = ground_truth(5,i);
    % Estraggo le grandezze stimate
    Vf_da(j) = dynamics_aids(2,i);
    phi_da(j) = dynamics_aids(3,i);
    theta_da(j) = dynamics_aids(4,i);
    psi_da(j) = dynamics_aids(5,i);
    j = j + 1;
end

% Plot delle posizioni del drone
figure(1)
subplot(5,1,1)
hold on
plot(Vf_da)
plot(Vf_gt)
legend('dynamics aids', 'ground truth')
title('Forward velocity')
xlabel('sample')
ylabel('m/s')
grid on

subplot(5,1,2)
hold on
plot(phi_da)
plot(phi_gt)
legend('dynamics aids', 'ground truth')
title('Roll')
xlabel('sample')
ylabel('rad')
grid on

subplot(5,1,3)
hold on
plot(theta_da)
plot(theta_gt)
legend('dynamics aids', 'ground truth')
title('Pitch')
xlabel('sample')
ylabel('rad')
grid on

subplot(5,1,4)
hold on
plot(psi_da)
plot(psi_gt)
legend('dynamics aids', 'ground truth')
title('Yaw')
xlabel('sample')
ylabel('rad')
grid on

subplot(5,1,5)
psi_deg = rad2deg(psi_da);
psi_gt_deg = rad2deg(psi_gt);
hold on
plot(psi_deg)
plot(psi_gt_deg)
legend('dynamics aids', 'ground truth')
title('Yaw')
xlabel('sample')
ylabel('deg')
grid on