syms t;
syms s;

n(t) = heaviside(t)-heaviside(t-20);

n(s) = laplace(n(t),t,s);

Yfree(s)=121*0.31/(0.31*s+0.02);
Yforced(s)= n(s)/(0.31*s+0.02);

yfree(t) = ilaplace(Yfree(s),s,t);
yforced(t) = ilaplace(Yforced(s),s,t);

disp(yfree(t));
disp(yforced(t));

ytotal(t)= yfree(t)+yforced(t);

disp(ytotal(t));

disp(eval(ytotal(20)));

fplot(yfree(t), [0,100]);
title('Free response');
xlabel('Time[s]');
ylabel('Ang. Velocity [rad/s]');

figure();
fplot(yforced(t), [0,100]);
title('Forced response');
xlabel('Time[s]');
ylabel('Ang. Velocity [rad/s]');

figure();
fplot(ytotal(t), [0,100]);
title('Total response');
xlabel('Time[s]');
ylabel('Ang. Velocity [rad/s]');