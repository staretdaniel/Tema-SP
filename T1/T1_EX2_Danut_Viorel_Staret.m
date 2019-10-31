% se genereaza 2 vectori cu pasul de 2ms care vor fi utiliati in formula
% pentru panta dreptei intre nivelele minim si maxim precizate

x11 = 0 : 0.002: 3;         
x12 = 3 : 0.002 : 5;

% se inlocuiesc vectorii in formula, coeficientii lui x fiind 1 pana la
% antingerea nivelului maxim 1 si -1 pana la atingerea minimului -2

y11 = x11 - 2;     
y12 = -x12 + 4 ;     

% se reprezinta grafic 

figure(1)
plot (x11, y11); 
hold on
plot (x12, y12);
hold off

% se procedaza asemanator si pentru celelalte rezolutii temporare

% pentru rezolutia temporara 20 ms

x21 = 0 : 0.02: 3;         
x22 = 3 : 0.02 : 5;
y21 = x21 - 2;     
y22 = -x22 + 4 ; 
figure(2)
plot (x21, y21); 
hold on
plot (x22, y22);
hold off

% pentru rezolutia temporara 200ms

x31 = 0 : 0.2: 3;         
x32 = 3 : 0.002 : 5;
y31 = x31 - 2;     
y32 = -x32 + 4 ;     
figure(3)
plot (x31, y31);   
hold on
plot (x32, y32);