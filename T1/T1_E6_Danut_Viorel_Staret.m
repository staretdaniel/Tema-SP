F0=300
Fs=4000
W0=2*pi*F0/Fs
N=10*4 
n=0:N-1
s=2*sin(W0*n)
stem(n,s), grid