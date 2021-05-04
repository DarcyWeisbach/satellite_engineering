function x = runge(x0,v,par);
x = zeros(size(x0));

tn = v(1);	th = v(2);	t1=tn+th/2;	 t2=tn+th;

parn=[x0;tn;par];
ftn = eqn(parn)';
ktn = th*ftn;
ytn = x0+ktn/2;

par1=[ytn;t1;par];
ft1 = eqn(par1)';
kt1 = th*ft1;
yt1 = x0+kt1/2;

par0=[yt1;t1;par];
ft0 = eqn(par0)';
kt0 = th*ft0;
yt0 = x0+kt0;

par2=[yt0;t2;par];
ft2 = eqn(par2)';
kt2 = th*ft2;

x = x0+(ktn+2*(kt1+kt0)+kt2)/6;
