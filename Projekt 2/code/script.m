% skrypt testujący
% 1. male dane
% dane wejsciowe
a1 = [1,5,5,5];
b1 = [2,2,2];
c1 = [1,2,3,4];
A1 = diag(b1,-1) + diag(a1) + diag(b1,+1); % do wbudowanych
% czas wykonania funkcji + wyniki
tic;
proste1 = A1\c1';
pro_time1 = toc;
tic;
wb1 = wbudowane(a1,b1,c1);
wb_time1 = toc;
tic;
iter1 = rozwiaz(a1,b1,c1);
iter_time1 = toc;
% bledy
er11 = abs(iter1 - proste1);
er12 = abs(iter1 - wb1);
% tableka dla koneserów
table1 = table(iter1, proste1, wb1, er11, er12, 'VariableNames', {'Iteracyjna', 'Wbudowana prosta', 'wbudowana cholseki', 'error iter - pro', 'error iter - wb'});
% 2. duza macierz z malymi liczbami
a2 = 0.00001 + (0.25 - 0.00001) * rand(1, 100);
b2 = -0.0000001 * ones(1,99);
c2 = rand(1,100);
A2 = diag(b2,-1) + diag(a2) + diag(b2,+1);
tic;
proste2 = A2\c2';
pro_time2 = toc;
tic;
wb2 = wbudowane(a2,b2,c2);
wb_time2 = toc;
tic;
iter2 = rozwiaz(a2,b2,c2);
iter_time2 = toc;
er21 = abs(iter2 - proste2);
er22 = abs(iter2 - wb2);
table2 = table(iter2, proste2, wb2, er21, er22, 'VariableNames', {'Iteracyjna', 'Wbudowana prosta', 'wbudowana cholseki', 'error iter - pro', 'error iter - wb'});
% 3. duze liczby
a3 = randi([50,1000], 1, 10);
b3 = randi([-25,-1], 1, 9);
c3 = randi([50,1000], 1, 10);
A3 = diag(b3,-1) + diag(a3) + diag(b3,+1);
tic;
proste3 = A3\c3';
pro_time3 = toc;
tic;
wb3 = wbudowane(a3,b3,c3);
wb_time3 = toc;
tic;
iter3 = rozwiaz(a3,b3,c3);
iter_time3 = toc;
er31 = abs(iter3 - proste3);
er32 = abs(iter3 - wb3);
table3 = table(iter3, proste3, wb3, er31, er32, 'VariableNames', {'Iteracyjna', 'Wbudowana prosta', 'wbudowana cholseki', 'error iter - pro', 'error iter - wb'});
% 4. duza macierz z duzymi liczbami
a4 = randi([100,1000], 1, 100);
b4 = randi([-10,-1], 1, 99);
c4 = randi([100,1000], 1, 100);
A4 = diag(b4,-1) + diag(a4) + diag(b4,+1);
tic;
proste4 = A4\c4';
pro_time4 = toc;
tic;
wb4 = wbudowane(a4,b4,c4);
wb_time4 = toc;
tic;
iter4 = rozwiaz(a4,b4,c4);
iter_time4 = toc;
er41 = abs(iter4 - proste4);
er42 = abs(iter4 - wb4);
table4 = table(iter4, proste4, wb4, er41, er42, 'VariableNames', {'Iteracyjna', 'Wbudowana prosta', 'wbudowana cholseki', 'error iter - pro', 'error iter - wb'});

% 5.diagonalna
a5 = randi([100,1000], 1, 35);
b5 = zeros(1, 34);
c5 = randi([100,1000], 1, 35);
A5 = diag(a5);
tic;
proste5 = A5\c5';
pro_time5 = toc;
tic;
wb5 = wbudowane(a5,b5,c5);
wb_time5 = toc;
tic;
iter5 = rozwiaz(a5,b5,c5);
iter_time5 = toc;
er51 = abs(iter5 - proste5);
er52 = abs(iter5 - wb5);
table5 = table(iter5, proste5, wb5, er51, er52, 'VariableNames', {'Iteracyjna', 'Wbudowana prosta', 'wbudowana cholseki', 'error iter - pro', 'error iter - wb'});

% 6. potezne dane
a6 = randi([1000,10000], 1, 1000000);
b6 = randi([-100,-5], 1, 999999);
c6 = randi([1000,10000], 1, 1000000);
% DANGER ZONE
%A6 = diag(b6,-1) + diag(a6) + diag(b6,+1);
%tic;
% proste6 = A6\c6';
%pro_time6 = toc;
pro_time6 = NaN;
%tic;
%wb6 = wbudowane(a6,b6,c6);
%wb_time6 = toc;
wb_time6 = NaN;
tic;
iter6 = rozwiaz(a6,b6,c6);
iter_time6 = toc;
%er61 = abs(iter6 - proste6);
er61 = NaN;

%er62 = abs(iter6 - wb6);
er62  = NaN;

% 7. potęzna macierz ale małe wartosci
a7 = 0.00001 + (0.25 - 0.00001) * rand(1, 1000000);
b7 = -0.000001 * ones(1,999999);
c7 = 0.00001 + (0.25 - 0.00001) * rand(1, 1000000);
% DANGER ZONE
%A7 = diag(b7,-1) + diag(a7) + diag(b7,+1);
%tic;
% proste7 = A7\c7';
%pro_time7 = toc;
pro_time7 = NaN;
%tic;
%wb7 = wbudowane(a7,b7,c7);
%wb_time7 = toc;
wb_time7 = NaN;
tic;
iter7 = rozwiaz(a7,b7,c7);
iter_time7 = toc;
%er71 = abs(iter7 - proste7);
er71 = NaN;

%er72 = abs(iter7 - wb7);
er72  = NaN;
% tableka wynikow - dla koneserów nieczytelnych tabel, ale zawierających
% wyniki
display(table1)
display(table2)
display(table3)
display(table4)
display(table5)

% tableka czasow liczenia i maksymalnego bledu
iter_times = [iter_time1, iter_time2, iter_time3, iter_time4, iter_time5, iter_time6, iter_time7]';
pro_times = [pro_time1, pro_time2, pro_time3, pro_time4, pro_time5,pro_time6, pro_time7]';
wb_times = [wb_time1, wb_time2, wb_time3, wb_time4, wb_time5, wb_time6, wb_time7]';
max_pro_iter_err = [max(er11),max(er21),max(er31),max(er41),max(er51), max(er61), max(er71)]';
max_wb_iter_err = [max(er12),max(er22),max(er32),max(er42),max(er52), max(er62), max(er72)]';
time_error_table = table(iter_times, pro_times, wb_times, max_pro_iter_err, max_wb_iter_err, 'VariableNames', {'Iter_time', 'Pro time', 'WB time', 'wb - iter max err', 'pro - iter max err'}, 'RowNames', {'Zestaw1', 'Zestaw2', 'Zestaw3', 'Zestaw4', 'Zestaw5', 'Zestaw6', 'Zestaw7'});
display(time_error_table)

% wyznaczniki naszych macierzy z czasem liczenia
tic;
wyznacznik1 = wyznacznik_cholesky(a1,b1);
tw1 = toc;
tic;
wyznacznik2 = wyznacznik_cholesky(a2,b2);
tw2 = toc;
tic;
wyznacznik3 = wyznacznik_cholesky(a3,b3);
tw3 = toc;
wyznacznik4 = wyznacznik_cholesky(a4,b4);
tw4 = toc;
tic;
wyznacznik5 = wyznacznik_cholesky(a5,b5);
tw5 = toc;
tic;
wyznacznik6 = wyznacznik_cholesky(a6,b6);
tw6 = toc;
tic;
wyznacznik7 = wyznacznik_cholesky(a7,b7);
tw7 = toc;
tic;
w1 = det(A1);
twd1 = toc;
tic;
w2 = det(A2);
twd2 = toc;
tic;
w3 = det(A3);
twd3 = toc;
w4 = det(A4);
twd4 = toc;
tic;
w5 = det(A5);
twd5 = toc;
% DANGER ZONE
%tic;
%det(A6);
%twd6 = toc;
twd6 = NaN;
w6 = NaN;
twd7 = NaN;
w7 = NaN;
% bledy
er1 = abs(w1 - wyznacznik1);
er2 = abs(w2 - wyznacznik2);
er3 = abs(w3 - wyznacznik3);
er4 = abs(w4 - wyznacznik4);
er5 = abs(w5 - wyznacznik5);
er6 = abs(w6 - wyznacznik6);
er7 = abs(w7 - wyznacznik7);
% dane do tabelki
errors = [er1,er2,er3,er4,er5,er6, er7]';
times_w = [tw1,tw2,tw3,tw4,tw5,tw6, tw7]';
times_d = [twd1, twd2,twd3,twd4,twd5,twd6, twd7]';
wyz = [wyznacznik1, wyznacznik2, wyznacznik3, wyznacznik4, wyznacznik5, wyznacznik6, wyznacznik7]';
dets = [w1,w2,w3,w4,w5,w6,w7]';
% tabelka wyznacznikow
det_table = table(wyz, dets, errors, times_w, times_d, 'VariableNames',{'wyznaczniki', 'z det', 'error', 'time wyz', 'time dets'}, 'RowNames', {'Zestaw 1','Zestaw 2','Zestaw 3','Zestaw 4','Zestaw 5','Zestaw 6','Zestaw 7'});
display(det_table)


