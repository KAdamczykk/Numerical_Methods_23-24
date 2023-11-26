function [degree1, der] = Chebyshev1stkind(x, n)
% The function takes a vector of arguments x and a number representing
% the degree of the polynomial. It generates a matrix/vector containing
% the expansion of the nth term of the Chebyshev polynomial of the first
% kind, as well as its derivative, computed using a recursive formula.
degree1 = zeros(length(x),n+1);
degree1(:,1) = 1;
degree1(:,2) = x;

for k = 3:n+1
    degree1(:,k) = 2* x'.* degree1(:,k-1) - degree1(:,k-2);
    
end
der = zeros(length(x), n+1);
der(:,2) = -1;

for i = 3:n+1
    der(:,i) = 2*x'.*der(:,i-1) + 2 * degree1(:,i-1) - der(:,i-2);
   
end

end
