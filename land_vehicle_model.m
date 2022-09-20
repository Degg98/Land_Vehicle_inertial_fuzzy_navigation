%% Land Vehicle Dynamic model

% x_dot is the derivative of x
syms g real
% Linear velocity
syms Vf_dot Vf real
% Acceleration
syms Abx Aby Abz real
% Angular velocity
syms wbx wby wbz real
% Euler angles
syms phi phi_dot theta theta_dot psi psi_dot real
% Position in Navigation-Frame (NED)
syms Pnn Pne Pnd Pnn_dot Pne_dot Pnd_dot real

w = [wbx wby wbz]';

% Model
Abx = Vf_dot + g*sin(theta);
Aby = Vf*wbz - g*sin(phi)*cos(theta);
Abz = -Vf*wby - g*cos(phi)*cos(theta);
phi_dot = wbx + sin(phi)*tan(theta)*wby + cos(phi)*tan(theta)*wbz;
theta_dot = cos(phi)*wby - sin(phi)*wbz;
psi_dot = sin(phi)/cos(theta)*wby + cos(phi)/cos(theta) * wbz;
Pnn_dot = Vf*cos(theta)*cos(psi);
Pne_dot = Vf*cos(theta)*sin(psi);
Pnd_dot = Vf*sin(theta);
