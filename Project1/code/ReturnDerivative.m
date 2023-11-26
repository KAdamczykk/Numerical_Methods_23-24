function [derivative] = ReturnDerivative(x,n,a)
% The function also takes vectors x, a, and the degree n, returning
% the derivative value for each point in x, utilizing the derivative values
% calculated in the Chebyshev1/2Kind functions.
[T, der1] = Chebyshev1stkind(x,n);
[U, der2] = Chebyshev2ndkind(x,n);
derivative = 0;

for i = 2:n+1
    derivative = derivative + a(i) *(der1(:,i) - der2(:,i));
end
end