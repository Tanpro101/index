A1=88;
A2=14;
fs=40*10^3;
t=0:1/fs:0.001;

x1=A1*cos(2*pi*383*100*t);
n=4;
L=(2^n)
delta=(max(x1)-min(x1))/L
xq=min(x1)+(round((x1-min(x1))/delta)).*delta;

subplot(3,1,1)
plot(t,x1,'R');
subplot(3,1,2);
stem(t,x1);
xlabel('time(s)')
ylabel('X[n]')
subplot(3,1,3);
stairs(t,xq,'b');
title('Quantized Signal')
xlabel('time')
ylabel('amplitude')