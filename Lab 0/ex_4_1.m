A=[0 1; -4 -2]
B=[0; 4]
C=[1 0]
D=0

sys=ss(A,B,C,D)

[Y,T,X]=step(sys)
plot(T,X)

x0=[0; 1]
[Y,T,X]= initial(sys,x0)
plot(T,X)
   
t=0:0.01:20
u=sin(t)
[Y,t,X]=lsim(sys,u,t,x0)
plot(t,X)

[n,d]=ss2tf(A,B,C,D) % n and d match the numerator and the denominator