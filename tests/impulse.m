clc;
clear all;
clf;
t = -10:10;
x = (t == 0);
subplot(1,2,1);
plot(t, x, 'g');
xlabel('time');
ylabel('amplitude');
title('unit impulse');
subplot(1,2,2);
stem(t, x, 'r');
xlabel('time');
ylabel('amplitude');
title('unit impulse')
