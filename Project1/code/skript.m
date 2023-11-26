% Main script launching all program functionalities
% Six sets of different data for n and a.
n1 = 7; % degree of polynomial
a1 = [2,7,-5,4,4,5,0,3]; % polynomial coefficients
n2 = 2;
a2 = [1, -5, 3];
n3 = 4;
a3 = [1, 3, 2, 2, 9];
n4 = 11;
a4 = ones(1, n4+1);
n5 = 15;
a5 = rand(1,n5+1);
n6 = 6;
a6 = [1,2,3,4,5,6,7];

approx = 1e-6;

% check with built-in
built_in(n1,a1)
built_in(n2,a2)
built_in(n3,a3)
built_in(n4,a4)
built_in(n5,a5)
built_in(n6,a6)

% Tests
% What numerical errors can occur in our operations:
% Representation errors
bl = [0.45, 0.3, 0.1];
built_in(n1,a1)
Newton(n1,a1,10, bl,approx)
built_in(n2,a2)
Newton(n2,a2,10, bl,approx)
built_in(n3,a3)
Newton(n3,a3,10, bl,approx)
built_in(n4,a4)
Newton(n4,a4,10, bl,approx)
built_in(n5,a5)
Newton(n5,a5,10, bl,approx)
built_in(n6,a6)
Newton(n6,a6,10, bl,approx)
% Rounding errors
% Subtracting close numbers that are relatively large (can occur in
% subtracting consecutive terms of Chebyshev polynomials of the first and 
% second kind)
xp = [0.0001, 4.2, 100.55, 25645.4585];
[ret1, iter1] = Newton(n1,a1,500, xp,approx); % I retrieve the results and the number of iterations for each variable
[ret2, iter2] =Newton(n2,a2,500, xp,approx); 
[ret3, iter3] =Newton(n3,a3,500, xp,approx);
[ret4, iter4] =Newton(n4,a4,500, xp,approx);
[ret5, iter5] =Newton(n5,a5,500, xp,approx);
[ret6, iter6] =Newton(n6,a6,500, xp,approx);
ret1
iter1
ret2
iter2
ret3
iter3
ret4
iter4
ret5
iter5
ret6
iter6
% This can be generalized for numbers close to each other.
% Multiplication or division usually do not cause significant errors.
% A large error may occur when the polynomial/derivative is close to x_k, but
% due to the construction of Chebyshev polynomials, this is unlikely.
% Truncation errors
Newton(n5,a5,30,xp,approx)
% Input data errors (but it's already the user's fault), e.g., incorrect types or
% x_0 = 0
% The derivative of the polynomial at a given point is zero.
Newton(n1,a1,10,0,approx) % = NaN
np = 1;
xpp = 0.5;
ap = [0,1];
ReturnPolynomial(xpp,np,ap)
ReturnDerivative(xpp,np,ap)
Newton(np,ap,10,xpp,approx) % = NaN

% Visualization - plots with roots.

x_values = [-1:0.01:1];
Plot(a1,n1,x_values, 200,approx);
Plot(a2,n2,x_values, 200,approx);
Plot(a3,n3,x_values, 200,approx);
Plot(a4,n4,x_values, 200,approx);
Plot(a5,n5,x_values, 200,approx);
Plot(a6,n6,x_values, 200,approx);