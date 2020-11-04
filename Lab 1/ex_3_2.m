%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = [0, 1, 0; 2*9.8, 0, -6.26; 0, 0, -3];

B = [0; 0; 1];

C = [1 0 0];

D = 0;

eig(A)
% After performing the eigenvalue function on A,
% we see that the linearized system is unstable as there is an eigenvalue with a real
% component and that being approximately 4.43. The other eigenvalues are
% -4.43 and -3 respectively. 
% For a continuous-time system: to find the stability of the system,  
% we first find the equilibrium solution of the system and then find the Jacobian 
% matrix of the system at the equilibrium solution. When doing this by
% hand for the prelab, I noticed that I got three real eigenvalues, two
% being negative and one being positive. Since one was positive, I
% immediately knew that the linearized system was unstable as it can only be 
% stable if all the real eigenvalues are negative.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Finding Transfer Function
[numerator, denominator] = ss2tf(A, B, C, D)
Gain = tf(numerator, denominator)
zpk(Gain)
% Comparing to the prelab results attained, we see that we got the same
% coefficients for terms in the numerator and denominator of the transfer
% function. Both transfer functions coincide.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
[sizes, x0, states] = magball;
% The ordering of the strings in the states array coincides with the ordering of
% states used by Simulink

xstar = [1; 0; (9.8)^(0.5)];
ustar = 3*(9.8^(0.5));
[A, B, C, D] = linmod('magball', xstar, ustar)
% The matrices obtained after linmod for A, B, C, D match the ones from
% Part 1 of the lab

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 4 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sys = ss(A, B, C, D);
impulse(sys, 2);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 5 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure;
step(sys, 2);
