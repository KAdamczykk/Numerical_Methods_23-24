function[wyznacznik] = wyznacznik_cholesky(a,b)
% funkcja pobiera a,b z macierzy wejsciowej i zwraca wyznacznik macierzy
% przy uzyciu rozkladu cholesky'ego, co jest wyprowadzone w sprawozdaniu
[d,s] = cholesky(a,b);
n = length(d);
wyznacznik = 1;
for i = 1:n
    wyznacznik = wyznacznik*(d(i))^2;
end

end