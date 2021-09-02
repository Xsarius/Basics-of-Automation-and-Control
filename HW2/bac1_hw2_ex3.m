syms s;
k1=1296;
k2=0.037;

G = tf(k1,[1 (k1*k2+24) k1]);

step(G);

grid on;

