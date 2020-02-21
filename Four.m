f=400; 
fs=8000;
fh=2000;
t=0:1/fs:1-1/fs;

A=3;
a=.1;
b=.4;
x1=A*sin(2*pi*f*t);
n=a*randn(size(x1));

x2=b*sin(2*pi*fh*t);

y=x1+n+x2;
y1=x1+x2;

bnd=obw(y,fs);

bitrate=2*bnd*log2(2);

ap=(A*A)/2;

np=a*a;
snrr=ap/np;

snrdb=10*log10(snrr);
SNR2=snr(y);

capacity=bnd*log2(1+snrr);

hp=(b*b)/2;

total_h_dis=hp/ap;
thd1=10*log10(total_h_dis);

thd2=thd(y);

Answer=[thd1 thd2];


SINAD=ap/(np+hp);

SINADD=10*log10(SINAD)

SND=sinad(y)

Answer=[SINADD SND]
