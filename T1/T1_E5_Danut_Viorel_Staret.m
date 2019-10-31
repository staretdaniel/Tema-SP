
F=50;
t=0:0.001:0.2;
s=2*sin(2*pi*F*t);
subplot(3,1,1), plot(t,s,'.-'), title('s[t]'), xlabel('Timp[s]'), ylabel('Semnalul s'), grid
% am folosit subplot pentru a observa si compara mai usor cele 3 semnale intr o
% singura figura

% a) se modfica pasul de variatie a variabilei t din exemplu la 0.01
% notez noul pas de variatie cu t1=0.01 si semnalul cu s1

t1=0:0.01:0.2;
s1=2*sin(2*pi*F*t1);
subplot(3,1,2), plot(t1,s1,'.-'), title('s1[t1]'), xlabel('Timp[s1]'), ylabel('Semnalul s1'), grid


% se modifica pasul de variatie a variabilei t din exemplu la 0.0002
% notez noul pas de variatie cu t2=0.0002 si semnalul cu s2

t2=0:0.0002:0.2;
s2=2*sin(2*pi*F*t2);
subplot(3,1,3), plot(t2,s2), title('s2[t2]'), xlabel('Timp[s2]'), ylabel('Semnalul s2'), grid
 
% Comentarii

% Se observa ca semnalul cu pasul de variatie t1 nu are forma sinusoidala.
% Acest lucru poate fi datorat faptului ca pasul de variatie este prea mare
% si acopera o perioada in intregime intr-un timp foarte scurt

% b)Se masoara pe grafic perioada semnalului sinusoidal in cele 3 situatii
%               ********** m-am inspirat de pe internet **********


% pentru semnalul de variatie t se gasesc valorile de varf iar diferenta
% indecsilor acestora va fi perioada semnalului

[~, idx]=findpeaks(t);
T=t(idx(2)) - t(idx(1));

% pentru semnalul t1

[~, idx1]=findpeaks(t1);
T1=t1(idx1(2)) - t1(idx1(1));

% pentru semnalul t2

[~, idx2]=findpeaks(t2);
T2=t2(idx2(2)) - tw(idx(1));

% c) se genereaza semnalul cosinusoidal c de frecventa Fc=20 Hz

Fc=20;
c=2*cos(2*pi*Fc*t);

% se schimba culoarea semnalului in rosu si se suprapun cele 2 semnale

plot(t,c,'*', 'color', 'red'), grid









