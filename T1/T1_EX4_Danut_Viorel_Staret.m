% Semnal sinusoidal cu rezolutie temporala de 2ms redresat mono-alternanta

t1=0:0.002:10
s1=0.8*sin(2*pi*0.333*t1)

% daca nivelul semnalului este sub 0 atunci acesta devine 0 pentru a se
% realiza redresarea mono-alternanta

for i=1:1:length(s1)
    if s1(i)<0
        s1(i)=0
    end
end

figure(1)
plot(t1,s1), title('s1[t1]'), xlabel('timp[s]'), ylabel('amplitudine'), grid;

% se repeta procedura pentru celelalte rezolutii temporale

t2=0:0.02:10
s2=0.8*sin(2*pi*0.333*t2)

for j=1:1:length(s2)
    if s2(j)<0
        s2(j)=0
    end
end

t3=0:0.2:10
s3=0.8*sin(2*pi*0.333*t3)

for k=1:1:length(s3)
    if s3(k)<0
        s3(k)=0
    end
end
