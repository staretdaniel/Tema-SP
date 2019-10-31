function [ medie vector matrice ] = Super_Functie ( a )

   medie = mean(real(a)) % media aritmetica a partilor reale
   
   vector = a.^2 % elementele vectorului initial  la patrat
   
   matrice = a * a.' % inmultirea cu transpusul

end

% a fost creata functia (intr-un nou fisier) care returneaza cerintele
% cerute

 