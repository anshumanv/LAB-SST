clc;
clear all;
clf;
t = -5:0.000002:5;
x1 = 6*sin(2 * pi * t);
x2 = 8*sin(2 * pi * t);

subplot(2,2,1)
plot(t, x1, 'r');
xlabel('time');
ylabel('amplitude');
title('first');

subplot(2,2,2)
plot(t, x2, 'r');
xlabel('time');
ylabel('amplitude');
title('second');

subplot(2,2,3)
plot(t, x1+x2, 'r');
xlabel('time');
ylabel('amplitude');
title('add');

subplot(2,2,4)
plot(t, x1.*x2, 'r');
xlabel('time');
ylabel('amplitude');
title('multiply');
