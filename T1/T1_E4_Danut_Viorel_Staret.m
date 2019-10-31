% a)se genereaza vectorul z de lungime 21
% se initializeaza lungimea vectorului (21) intr o noua variabila (x)

x=21

% vectorul z se creaza initial sub forma unei matrici de zerouri cu o
% singura linie si 21 de coloane(lungimea vectorului)

z=zeros(1, x)

% pe pozitiile 6 12 18 se inlocuiesc zerourile cu 1

z(6)=1
z(12)=1
z(18)=1

% reprezentarea grafica z(n) 
% se genereaza vectorul n

n=0:20

%graficele sunt impartite in 2 miniferestre dar ambele apartin figurii 1

figure(1)

% primul grafic se afla in prima minifereastra 

subplot(2,1,1), stem(n, z), title('z(n)'), xlabel('n'), ylabel('z'), grid

% reprezentare grafica z(m)
% se genereaza vectorul m

m=-5:15

% al doilea grafic se afla in a doua minifereastra

subplot(2,1,2), stem(m,n), title('z(m)'), xlabel('m'), ylabel('n'), grid


% b) se genereaza vectorul t folosing sintaxa abs

t=abs(10-n)

% reprezentare grafica t(n)
% aceasta dependenta va aparea in figura 2, pentru a nu se suprapune cu
% celelalte 2 grafice

figure(2)
stem(n,t), title('t(n)'), xlabel('n'), ylabel('t'),grid


% c) se genereaza vectorii x1 si x2

n1=-15:1:25
x1= sin(pi/17*n1)
n2=0:1:50
x2=cos(pi/sqrt(23)*n2)

% se reprezinta pe acelasi grafic cei 2 vectori folosind comanda plot

figure(3)
plot(n1,x1), grid
hold on
plot(n2,x2,'color','red'), grid
hold off

% se reprezinta vecotii in 2 "miniferestre" diferite ale aceleiasi figuri
% cu comanda plot

figure(4)
subplot(2,1,1), plot(n1,x1), title('x1(n1)'), xlabel('n1'), ylabel('x1'), grid
subplot(2,1,2), plot(n2,x2,'color','red'), title('x2(n2)'), xlabel('n2'), ylabel('x2'), grid

% se repeta aceleasi procedee utilizand comanda stem

figure(5)
stem(n1,x1), grid
hold on
stem(n2,x2,'color','red'), grid
hold off

figure(6)
subplot(2,1,1), stem(n1,x1), title('x1(n1)'), xlabel('n1'), ylabel('x1'), grid
subplot(2,1,2), stem(n2,x2,'color','red'), title('x2(n2)'), xlabel('n2'), ylabel('x2'), grid
