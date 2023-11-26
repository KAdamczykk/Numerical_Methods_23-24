function [ret, iter] = Newton(n,a, max_iterations, x_0, approx)
% The function takes the degree `n`, coefficient vector `a`, initial guess 
% vector `x_0`, maximum number of iterations, and an optional small 
% tolerance value for achieving optimal approximation. Using the Newton's
% method, it finds the roots of the polynomial and stops when either the 
% maximum number of operations is reached or the optimal approximation is
% achieved. It returns the values of the roots (as a vector or a single
% value) and the number of iterations reached for each variable.
x_k = x_0;
iter = zeros(size(x_0));
for i = 1:max_iterations
    x_k_1 = x_k;
    x_k = x_k - (ReturnPolynomial(x_k, n, a)./ReturnDerivative(x_k, n, a))';
    iter(iter == 0 & abs(x_k - x_k_1) < approx) = i;

    if all(abs(x_k - x_k_1) < approx)
        iter(iter == 0) = i;
       break;
    end
end
ret = x_k;
iter(iter == 0) = max_iterations;
end