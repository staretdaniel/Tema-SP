% Semnal dreptunghiular cu rezolutie temporala de 2ms

% se determina timpul cu rezolutia temporala specificata si perioada de 2s
t1=0:0.002:2

% se scrie forma semnalului dreptunghiular notat cu d1 cu factor de umplere
% 25%

d1=square(t1,25)

%se reprezinta grafic semnalul dreptunghiular
figure(1)
plot(t1,d1), title('Semnal dreptunghiular (2ms)'), xlabel('timp[s]'), ylabel('Amplitudine'), grid;
   
% se repeta procedura pentru celelalte rezolutii temporale

t2=0:0.02:2
d2=square(t2,25)
figure(2)
plot(t2,d2), title('Semnal dreptunghiular (20ms)'), xlabel('timp[s]'), ylabel('Amplitudine'), grid;

t3=0:0.2:2
d3=square(t3,25)
figure(3)
plot(t3,d3), title('Semnal dreptunghiular (200ms)'), xlabel('timp[s]'), ylabel('Amplitudine'), grid;

