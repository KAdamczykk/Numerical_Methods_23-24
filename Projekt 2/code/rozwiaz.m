function [wynik] = rozwiaz(a,b,c)
% funkcja pobiera a,b z macierzy A i wektor wyrazów wolnych c, liczy
% rozkład choleskiego i dwukrotnie liczy metodą eliminacji gaussa
% ostateczny wynik, (metoda dla macierzy górno i dolno trójkątnej, która
% powstaje z trójdiagonalnej
[d, s] =cholesky(a,b);
n = length(a);
y = zeros(1,n);
y(1) = c(1) / d(1);
for i = 2:n
    y(i) = (c(i) - s(i-1) * y(i-1)) / d(i);
end

wynik = zeros(n,1);
wynik(n) = y(n) / d(n);
for i = n-1:-1:1
    wynik(i) = (y(i) - s(i) * wynik(i+1)) / d(i);
end
end