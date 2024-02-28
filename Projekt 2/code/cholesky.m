function [d ,s] = cholesky(a,b)
% a - diagonala
% b - diagonale pod i nad glowna
% d - wynikowa diagonala w macierzy L
% s - wynikowa poddiagonala w macierzy L
% funkcja wyznacza wartosci na diagonali i pod diagonala dla rozkladu
% choleskiego dla macierzy pasmowej/trojdiagonalnej

d(:,1) = sqrt(a(1));
for i = 1: length(a) - 1
    s(:,i) = b(i) / d(i);
    d(:, i+1) = sqrt(a(i+1) - s(i)^2);
end


end