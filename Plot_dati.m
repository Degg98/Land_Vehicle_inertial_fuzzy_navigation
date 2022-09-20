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
zd_plot(j) = out.zd.signals.values(i);
j = j + 1;
end

% Plot delle posizioni del drone
plot(xd_plot, yd_plot)

%%

% Parametri
a = 1;
b = 1;
c = 1;

i = 1;
for t = 0:1e-4:10
    % Accelerating part
    if t < b
        j = a * b^4 * sin(pi*t/b) / pi^4;
    elseif (t >= b) && (t <= 3*b)
        j = -16 * a * b^4 * sin(pi*t/(2*b)-pi/2) / pi^4;
    elseif (t > 3*b) && (t <= 4*b)
        j = a * b^4 * sin(pi*t/b-3*pi) / pi^4;
    elseif t > 4*b && t <= 4*b+c
        j = 0;
    % Decelerating part
    elseif t > 4*b+c && t <= 5*b+c
        j = a * b^4 * sin(pi*t/b) / pi^4;
    elseif (t > 5*b+c) && (t <= 7*b+c)
        j = 16 * a * b^4 * sin(pi*t/(2*b)-pi/2) / pi^4;
    elseif (t > 7*b+c) && (t <= 8*b+c)
        j = a * b^4 * sin(pi*t/b-3*pi) / pi^4;
    else
        j = 0;
    end
    jo(i) = j;
    i = i + 1;
end

jo = jo(1:end-1);
t = linspace(0,10,1e5);
plot(t, jo)
