format short e;
clear asol;
%%%%%     ?p?????[?^            %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
mm = 1e+0;%?L??????
kk = 2e+0;
cc = 2e-1;
%%%%%     ????p?????[?^
t0 = 0e-0;	th = 1e-1;	tf = 1e+1;%th????????Ctf?????
%%%%%     ?????l
x0 = [1e-0;0e-0];
%%%%%     Calculation         %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for tn = t0:th:tf;
   par = [ mm kk cc ]';
   v  = [tn;th];
   x0 = runge(x0,v,par);
   if tn == t0
      asol = [tn x0'];
   else
      sol  = [tn x0'];
      asol = [ asol ; sol ];
   end
end
figure(1)
plot(asol(:,1),asol(:,3),'b-')%???\??
hold on%???????
