t=0:pi/50:20*pi;
x1=18*cos(2*pi*3834*t+88*pi/180);
x2=82*cos(2*pi*3834*t+30*pi/180);

subplot(3,1,1)
plot(t,x1)
grid on
xlabel('Time')
ylabel('Signal')
title('X1 plotting')


subplot(3,1,2)
plot(t,x2)
grid on
xlabel('Time')
ylabel('Signal')
title('X2 plotting')



x3=x1+x2;
subplot(3,1,3)
plot(t,x3)
grid on
xlabel('Time')
ylabel('Signal')
title('X3 plotting')
