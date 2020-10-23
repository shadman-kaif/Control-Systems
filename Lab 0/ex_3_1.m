A = randn(4,4) % Initialize A
X = randn(4,4) % Initialize X
B = A*X % Compute B
X_inv = inv(A)*B % Compute X using inverse
X_mldiv = A\B % Compute X using mldivide
X_mrdiv = transpose(transpose(B)/transpose(A)) % Compute X using mrdivide