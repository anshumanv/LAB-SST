clc;
clf;
clear all;

n=-10:0.001:10;
x=(n==0);
figure(1)
plot(n,x,'r');
title('Impulse Function');
xlabel('Time');
ylabel('Impulse Magnitude');

y=fftshift(fft(x));

figure(2)
plot(n,abs(y),'b');
title('Fourier Transform of Unit Impulse Function');
xlabel('Time');
ylabel('Magnitude of Output Function');
