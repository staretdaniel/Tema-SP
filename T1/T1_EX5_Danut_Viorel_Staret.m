% Semnal sinusoidal cu rezolutie temporala de 2ms redresat dubla-alternanta

% se determina timpul cu rezolutia temporala specificata si perioada de 2s

t1=0:0.002:10

% se scrie forma semnalului sinusoidal notat cu s1 redresat

figure(1)
s1=abs(1.5*sin(2*pi*0.25*t1))
plot(t1,s1), title('s1[t1]'), xlabel('timps[s]'), ylabel('amplitudine'), grid;


% se repeta procedura pentru celelalte rezolutii temporale

t2=0:0.02:10
s2=abs(1.5*sin(2*pi*0.25*t2))
figure(2)
plot(t2,s2), title('s2[t2]'), xlabel('timps[s]'), ylabel('amplitudine'), grid

t3=0:0.2:10
s3=abs(1.5*sin(2*pi*0.25*t3))
figure(3)
plot(t3,s3), title('s3[t3]'), xlabel('timps[s]'), ylabel('amplitudine'), grid

