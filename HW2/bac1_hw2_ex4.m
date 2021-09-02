syms x;
syms t;
m = 1;
b = 0.971541;
k = 3.12031;
x0 = 2.34023;

P(x) = (x^2*b^2)/((k-m*x^2)^2-(x^2*b^2));
Q(x) = (b*x*k-m*x^3*b)/((k-m*x^2)^2-(x^2*b^2));

A(x) = sqrt(P(x)^2 + Q(x)^2);

F(x) = atan(Q(x)/P(x));

Gain(x) = 20 * log10(x);

a = eval(A(x0));
fi = eval(F(x0));
gain = eval(Gain(a));

disp("|G(jw)|: " + a);
disp("Phase shift: " + rad2deg(fi));
disp("Gain: "+gain);

G = tf([b 0],[m b k]);
bode(G);
grid on;

Y(t) = A(x0)*sin(x0*t + F(x0))*heaviside(t);

figure();
fplot(Y(t), [0, 10]);
xlabel("Time [s]");
title("Steady state response plot");
ylabel("Displacement [m]");
