TI = 0.0465;
a = 3.8;
b = 18;
G = tf([TI 1],[TI 0])*tf([a],[1 b]);
rlocus(G);
rlocfind(G)