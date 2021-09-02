syms t;
syms s;

r(t) = heaviside(t);

R(s) = laplace(r(t),t,s);

G(s) = 13/(s^2+2*s+13);

Y(s) = R(s)*G(s);

y(t) = ilaplace(Y(s),s,t);

disp(y(t));

yt = eval(y(0.9069));

disp(yt);

fplot(y(t),[0, 10]);

xlabel('Time [s]');
ylabel('Response');