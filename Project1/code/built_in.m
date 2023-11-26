function [ret] = built_in(n,a)
% The function checks the correctness of the result using built-in MATLAB 
% functions. It calculates Chebyshev polynomials of the first and second 
% kind, determines our polynomial, retrieves the coefficients from it in 
% the correct order, and finds all the roots. A symbolic variable is used 
% to ensure the easy operation of the ChebyshevT/U functions.
% The solutions that are complex are removed.
syms x;
T = chebyshevT(0:n, x);
U = chebyshevU(0:n, x);
roz = T-U;
poly = a.*roz;
poly = sum(poly);
coef = (coeffs(poly, x, 'All'));
ret = roots(double(coef));
ret = ret(imag(ret) == 0);
end