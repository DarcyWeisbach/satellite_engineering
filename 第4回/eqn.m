function xdot = eqn(z);
%%%%%     PARAMETERS        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xv = z(1);  xn = z(2);
yv = z(3);  yn = z(4);
zv = z(5);  zn = z(6)
tn = z(7);
n = z(8);
fx=z(9);  fy=z(10);  fz=z(11)

%% Hill equation %%
xdot(1) = 2*n*yv+3*n*n*xn+fx;
xdot(2) = xv;
xdot(3) = -2*n*xv+fy;
xdot(4) = yv;
xdot(5) = -n*n*zn+fz;
xdot(6) = zv 


%% xdot(1) = (-cc*xv-kk*xn)/mm; %%
%% xdot(2) = xv; %%
