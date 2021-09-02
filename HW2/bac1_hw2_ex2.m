syms s;
K = 26291;
x3= 1;
x2 = 99.3;
x1 = 839.7;
x0 = 243;

G = tf(K,[x3 x2 x1 x0]);

nyquist(G);

grid on;