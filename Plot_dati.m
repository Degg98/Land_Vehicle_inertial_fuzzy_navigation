%% PLOT DATI
n = length(out.tout);
% Estraggo le componenti di posizione
j = 1;
for i=1:100:n
% x_plot(j) = out.x.signals.values(1,1,i);
% y_plot(j) = out.y.signals.values(1,1,i);
% z_plot(j) = out.z.signals.values(1,1,i);
xd_plot(j) = out.xd.signals.values(i);
yd_plot(j) = out.yd.signals.values(i);
j = j + 1;
end

% Plot delle posizioni del drone
plot(xd_plot, yd_plot)
