% se genereaza un  vector  cu  elemente  aleatoare  cu  distribuþie normalã
x=randn(1,20)

% se parcurge lungimea vectorului x si se indentifica elementele negative
for i=1:1:length(x)
if x(1,i)<0
x(1,i)
end
end

% se salveaza fisierul in folderul SP