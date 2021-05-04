function xdot = eqn(z);
%%%%%     PARAMETERS        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xv = z(1);  xn = z(2);
tn = z(3);
mm = z(4);	kk = z(5);  cc = z(6);
%
xdot(1) = (-cc*xv-kk*xn)/mm;
xdot(2) = xv;
