A = [7 2 -3; 4 6 -4; 5 2 -1] % Initialize A
[V, D] = eig(A) % Determining eigenvalues and eigenvectors of A
eigenvectors = roots(poly(A)) % These are the same eigenvalues as the ones obtained from D

format LONG % Show more significant digits
norm(A*V - V*D) % Norm value of AV-VD
verify = A*V - V*D % This 3x3 matrix has very small values; all slightly below 0

Diagonal = inv(V)*A*V % This is diagonlizable as the value of inv(V)*A*V is equal to the eigenvalue matrix

% The only eigenvector for the new matrix A with multiplicity of 2 is 
% [1 0]. This was done by hand, and can be verified by finding matrix D as
% follows:
A = [1 1; 0 1] % New matrix A
[V, D] = eig(A) % The resulting [V,D] satisfies AV=VD
% The matrix V in this case is not invertible as it is singular. It can
% only be inverted if its determinant is non 0. This can be verified by
% trying inv(V) command on MATLAB.

A = [0 4 3; 0 20 16; 0 -25 -20] % New matrix A
J = jordan(A) % Jordan form for matrix A
