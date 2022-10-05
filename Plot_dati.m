%% PLOT DATI
s = length(out.tout);
% Estraggo le componenti di posizione
j = 1;
for i=1:s
x_plot(j) = out.x.signals.values(1,1,i);
y_plot(j) = out.y.signals.values(1,1,i);
z_plot(j) = out.z.signals.values(1,1,i);
xd_plot(j) = out.real_pos.signals.values(1,1,i);
yd_plot(j) = out.real_pos.signals.values(2,1,i);
zd_plot(i) = out.real_pos.signals.values(3,1,i);
j = j + 1;
end

% Plot delle posizioni del drone
plot3(x, y, z, xd_plot, yd_plot, zd_plot)
axis equal