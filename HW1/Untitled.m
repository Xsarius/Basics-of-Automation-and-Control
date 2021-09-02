syms t;

y(t) = 116*exp(-0.077*t) - 50*exp(-0.077*t) + 50 + heaviside(t - 20)*(50*exp(-0.077*(t-20)) - 50);

fplot(y(t),[0,50]);