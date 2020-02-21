t=0:pi/100:5*pi;

%x1=18*sin(3833*t+80);
x2=2*sin(3833*t+(30*pi/180));

hold on

%plot(t,x1)
plot(t,x2)
grid on
xlabel('Time')
ylabel('Signal')
title('Signal plotting')