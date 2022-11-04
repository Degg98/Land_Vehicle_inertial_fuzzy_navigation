close all
clc

load('riferimenti.mat')
load("Corrections.mat")
load('Dynamics_aided.mat')


%% PLOT MISURE
l = length(measure);
% Estraggo le componenti i accelerazione lineare e velocità angolare
for i =1:l
    Abx(i) = measure(2,i);
    Aby(i) = measure(3,i);
    Abz(i) = measure(4,i);
    wbx(i) = measure(5,i);
    wby(i) = measure(6,i);
    wbz(i) = measure(7,i);
end

% Plot delle accelerazioni lineari
% figure()
% subplot(3,1,1)
% plot(Abx)
% legend('Abx', 'Location','best')
% title('x-axis linear acceleration')
% xlabel('sample')
% ylabel('m/s^{2}')
% xlim([0 2e4])
% grid on
% 
% subplot(3,1,2)
% plot(Aby)
% legend('Aby', 'Location','best')
% title('y-axis linear acceleration')
% xlabel('sample')
% ylabel('m/s^{2}')
% xlim([0 2e4])
% grid on
% 
% subplot(3,1,3)
% plot(Abz)
% legend('Abz', 'Location','best')
% title('z-axis linear acceleration')
% xlabel('sample')
% ylabel('m/s^{2}')
% xlim([0 2e4])
% grid on
% 
% % Plot delle velocità angolari
% figure()
% subplot(3,1,1)
% plot(wbx)
% legend('wbx', 'Location','best')
% title('x-axis angular velocity')
% xlabel('sample')
% ylabel('m/s^{2}')
% xlim([0 2e4])
% % ylim([-0.5 0.5])
% grid on
% 
% subplot(3,1,2)
% plot(wby)
% legend('wby', 'Location','best')
% title('y-axis angular velocity')
% xlabel('sample')
% ylabel('m/s^{2}')
% xlim([0 2e4])
% % ylim([-0.5 0.5])
% grid on
% 
% subplot(3,1,3)
% plot(wbz)
% legend('wbz', 'Location','best')
% title('z-axis angular velocity')
% xlabel('sample')
% ylabel('m/s^{2}')
% xlim([0 2e4])
% grid on

%% PLOT CONTFRONTO PARAMETRI STIMATI - GROUND TRUTH
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
    % Estraggo le misure usate in correzione
    Vf_c(j) = corrections(2,i);
    Vf_c(Vf_c==0) = nan;
    phi_c(j) = corrections(3,i);
    phi_c(phi_c==0) = nan;
    theta_c(j) = corrections(4,i);
    theta_c(theta_c==0) = nan;
    psi_c(j) = corrections(5,i);
    psi_c(psi_c==0) = nan;
    j = j + 1;
end


figure()
subplot(4,1,1)
hold on
plot(Vf_da)
plot(Vf_gt)
legend('dynamics aids', 'ground truth', 'Location','best')
title('Forward velocity')
xlabel('sample')
ylabel('m/s')
xlim([0 2e4])
grid on

subplot(4,1,2)
hold on
phi_da_deg = rad2deg(phi_da);
phi_gt_deg = rad2deg(phi_gt);
plot(phi_da_deg)
plot(phi_gt_deg)
legend('dynamics aids', 'ground truth', 'Location','best')
title('Roll')
xlabel('sample')
ylabel('deg')
xlim([0 2e4])
% ylim([-6 4])
grid on

subplot(4,1,3)
hold on
plot(rad2deg(theta_da))
plot(rad2deg(theta_gt))
legend('dynamics aids', 'ground truth', 'Location','best')
title('Pitch')
xlabel('sample')
ylabel('deg')
xlim([0 2e4])
grid on

% subplot(5,1,4)
% hold on
% plot(psi_da)
% plot(psi_gt)
% legend('dynamics aids', 'ground truth')
% title('Yaw')
% xlabel('sample')
% ylabel('rad')
% xlim([0 2e4])
% grid on

subplot(4,1,4)
psi_deg = rad2deg(psi_da);
psi_gt_deg = rad2deg(psi_gt);
hold on
plot(psi_deg)
plot(psi_gt_deg)
legend('dynamics aids', 'ground truth', 'Location','best')
title('Yaw')
xlabel('sample')
ylabel('deg')
xlim([0 2e4])
grid on

% Plot velocità di avanzamento
% figure()
% hold on
% plot(Vf_da)
% plot(Vf_gt)
% legend('dynamics aids', 'ground truth', 'Location','best')
% title('Forward velocity')
% xlabel('sample')
% ylabel('m/s')
% xlim([0 2e4])
% grid on

%% PLOT MISURE DI CORREZIONE

figure()
subplot(3,1,1)
plot(Abx)
legend('Abx', 'Location','best')
title('x-axis linear acceleration')
xlabel('sample')
ylabel('m/s^{2}')
xlim([0 2e4])
grid on

subplot(3,1,2)
plot(Aby)
legend('Aby', 'Location','best')
title('y-axis linear acceleration')
xlabel('sample')
ylabel('m/s^{2}')
xlim([0 2e4])
grid on

subplot(3,1,3) 
plot(rad2deg(phi_c))
legend('phi_c', 'Location','best')
title('Corrected roll')
xlabel('sample')
ylabel('deg')
xlim([0 2e4])
grid on