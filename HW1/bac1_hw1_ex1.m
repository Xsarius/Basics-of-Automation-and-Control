syms t;
syms s;

u(s) =200/(20*s+1);

u(t) = ilaplace(u(s),s,t);

disp(u(t));

u1(s) =10*(1-exp(-10*s))/(s*(20*s+1));

u1(t) = ilaplace(u1(s),s,t);

disp(u1(t));

fplot(u(t),[0,100]);
figure();
fplot(u1(t),[0,100]);
figure();
y(t)=u(t)+u1(t);
fplot(y(t),[0,100]);