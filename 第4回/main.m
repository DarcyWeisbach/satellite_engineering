format short e;
clear asol;
%%%%% parameter%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mu = 3.98600441e+14;
R = 800e+3;
n = sqrt(mu/R^3);
fx = 0;
fy = 0;
fz = 0;
%%%%% times %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
t0 = 0e-0;	th = 1e-1;	tf = 1e+1;
%%%%% initial parameter %%%%%%%%%%%%%%%%%%%%%%%%
x0 = [0e-0;1e-0];
y0 = [0e-0;1e-0];
z0 = [0e-0;1e-0];
%% Be careful! 1×9 matrix? %%
x = [x0' y0' z0']';
%%%%%     Calculation         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for tn = t0:th:tf;
   par = [n fx fy fz]';
   v  = [tn;th];
   x = runge(x,v,par);
   if tn == t0
      asol = [tn x'];
   else
      sol  = [tn x'];
      asol = [ asol ; sol ];
   end
end
figure(1)
plot(asol1(:,1),asol1(:,3),'b-')
hold on%???????
