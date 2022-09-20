%% Land Vehicle Dynamic model

% d_x is the derivative of x
syms g
% Linear velocity
syms d_Vf Vf 
% Acceleration
syms Abx Aby Abz
% Angular velocity
syms wbx wby wbz
% Euler angles
syms phi d_phi theta d_theta psi d_psi
% Position in Navigation-Frame (NED)
syms Pnn Pne Pnd d_Pnn d_Pne d_Pnd  

% Model
Abx = d_Vf + g*sin(theta);
Aby = Vf*wbz - g*sin(phi)*cos(theta);
Abz = -g*cos(phi)*cos(theta);
d_phi = cos(phi)*tan(theta)*wbz;
d_theta = -sin(phi)*wbz;
d_psi = cos(phi)/cos(theta) * wbz;
d_Pnn = Vf*cos(theta)*cos(psi);
d_Pne = Vf*cos(theta)*sin(psi);
d_Pnd = Vf*sin(theta);
