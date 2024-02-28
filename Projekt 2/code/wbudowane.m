function [wynik] = wbudowane(a, b, c)
% funkcja przyjmuje a,b z macierzy wejsciowej i wektor wyrazów wolnych
% tworzy macierz A, liczy rozklad chol() i oblicza wynik uzywając tego
% rozkladu, output: wynik - wektor z rozwiazaniem ukladu równań
A = diag(b,-1) + diag(a) + diag(b,+1);
L = chol(A, "lower");
y = L\c';
wynik = L'\y;
end