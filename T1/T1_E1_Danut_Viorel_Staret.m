% a) initiem vectorul linie cu pas liniar 0.1 notat cu a
a=0:0.1:2

% initializam o matrice identitate patratica M de dimensiune lungimea
% vectorului a
M=eye(length(a))

% returnam diagonala matricei M pe care o initializam in vectorul b de unde
% va rezulta un vector coloana cu numarul de linii egal cu lungimea
% vectorului a
b=diag(M)

% se realizeaza inmultirea a*b
s=a*b

% operatiile efectuate in urma inmultirii celor 2 vectori au fost :
% suma produselor dintre fiecare element de pe linia vectorului a si 
% fiecare element de pe coloana vectorului b

% b) se realizeaza inmultirea b*a
p=b*a

% c) se realizeaza inmultirea element cu element a vectorilor a si b
h=a.*b
