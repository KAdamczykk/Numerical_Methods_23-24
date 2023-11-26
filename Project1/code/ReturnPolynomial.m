function [polynomial] = ReturnPolynomial(x,n,a)
% The function takes a vector of arguments x, the degree of the 
% polynomial n, and a vector of coefficients a. It calculates the value 
% of the polynomial for each x.
[T, po] = Chebyshev1stkind(x,n);
[U, po1] = Chebyshev2ndkind(x,n);
polynomial = 0;
for k = 1:n+1
    polynomial = polynomial + a(k) * (T(:,k) - U(:,k));
end

end