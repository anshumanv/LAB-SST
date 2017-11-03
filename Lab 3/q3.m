clc;
clear all;
clf;

t = 0:0.001:2;
x =  sin(2*pi*10*t) + sin(2*pi*5*t) + sin(2*pi*50*t);

N = 1024;
y = fftshift(fft(x, N));

fs = 1/0.001;
fval = fs*[(-(N/2):(N/2)-1)/N];

figure
subplot(2,1,1)
plot(t, x, 'r');
subplot(2,1,2)
plot(fval, y);
