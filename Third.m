t=0:pi/100:10;

x1=sin(2*pi*1*t);
x2=2*sin(2*pi*2*1*t);
x3=3*sin(2*pi*1*3*t);

%subplot(4,1,1)
plot(t,x1)
axis([0 1 -1 1])

%subplot(4,1,2)
plot(t,x2)
axis([0 1 -2 2])

%subplot(4,1,3)
plot(t,x3)
axis([0 1 -3 3])

y=x1+x2+x3

%subplot(4,1,4)
plot(t,y)


