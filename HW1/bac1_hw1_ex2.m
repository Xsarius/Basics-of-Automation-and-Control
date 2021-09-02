syms t;        
syms s;         

u(t) = t*heaviside(t) - 2*(t-1)*heaviside(t-1) + 2*(t-3)*heaviside(t-3)-(t-4)*heaviside(t-4);

U(s) = laplace(u(t),t,s);

disp(U(s));

G(s) = (3250*s+5281)/(1000*s^2+3250*s+5281);

Y(s) = G(s)*U(s);

y(t) = ilaplace(Y(s),s,t);

disp(y(t));

yt = eval(y(4));

disp(yt);

fplot(y(t), [0, 10])

title('Oscillation chart');
xlabel('Time [s]');
ylabel('Displacement [m]');


