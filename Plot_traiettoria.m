%% PLOT TRAIETTORIA

close all;
figure(1) 
hold on
grid on

%% Traiettoria di Riferimento
% importo i dati
load("Estimated_trajectory.mat");

% plot
plot(est_traj(2,:), est_traj(3,:), "b--")



%% Traiettoria Stimata
load("True_trajectory.mat")
plot(true_traj(2,:), true_traj(3,:), "r-")

%% Traiettoria Integrata
load("Unaided_trajectory.mat")
plot(unaided_traj(2,:), unaided_traj(3,:), "m-.")


legend('Dynamics Aids', 'Ground Truth', 'Unaided', Location='best')
title('Traiettoria')
xlabel('East (m)')
ylabel('North (m)')
xlim([-200 400])
ylim([-300 300])