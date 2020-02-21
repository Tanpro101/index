fs=1000;
f=30;
t=0:1/fs:1-1/fs;

x1=sin(2*pi*f*t);
x2=3*sin(2*pi*2*f*t);
x3=2*sin(2*pi*4*f*t);


y=x1+x2+x3

bnd=obw(y,fs)
fft_y=fft(y);
fft_signal=fftshift(fft_y);
%plot(t,abs(fft_signal));
f=fs/2*linspace(-1,1,fs);
plot(f,abs(fft_signal));
