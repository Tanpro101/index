f=400; 
fs=8000;

t=0:1/fs:1-1/fs;

A=3;
a=.1;

x1=A*sin(2*pi*f*t);
noise=a*randn(size(x1));

y=x1+noise;


bnd=obw(y,fs)

bitrate=2*bnd*log2(2)

ap=(A*A)/2;

np=a*a;
SNR=ap/np

SNRdb=10*log10(SNR)
SNR2=snr(y)

capacity=bnd*log2(1+SNR)