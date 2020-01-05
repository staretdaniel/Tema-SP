P= 40      % perioada
D= 24      % numarul de ordine asociat numelui meu
K= 50      % 50 de coeficienti
w0=2*pi/P  % pulsatia semnalului

% se alege o rezolutie temporala potrivita

t=-2*P:0.1:2*P

% se introduc zerouri in vectorul de coeficienti Fourier

Xk = zeros(1,2*K+1)


% forma semnalului ( fara coeficienti Fourier )

x= abs(sawtooth(w0*t,0.6))

% pentru un semnal triunghiular standard xmas-ul este 0.5
% in acest caz, xmas va fi: 24/40=0.6

for k = -K:K
Xk(k+K+1)=integral(@(t)((abs(sawtooth(w0*t,0.6))+sawtooth(w*t,0.6)))/2.*exp(-j*k*w0*t),0,P)

end

% se construieste semnalul pe baza coeficientilor determinati

xx=0

for k = -K:K
xx = xx + Xk(k+K+1) * exp(j*k*w0*t)

end

figure(1)
plot(t,x,'color','blue')
hold on

% se reprezinta grafic doar partile reale ale semnalului

plot(t, real(xx),':','color','red')
xlabel('timp[s]'), ylabel('semnal')
title('Reprezentarea grafica a semnalului cu si fara coeficienti Fourier')
axis([-40 40 -0.1 1.1])
hold off

figure(2)

% conform celor invatate la cursul de semnale si sisteme, Ak=2*|C(kw0)| 
hold on
plot((-K:K)*w0,2*abs(Xk))

for k=-K:K
stem(k*w0,2*abs(Xk(k+K+1)))
end  

xlabel('w0[rad/s]')
ylabel('Amplitudine')
title('Spectru de amplitudini')

