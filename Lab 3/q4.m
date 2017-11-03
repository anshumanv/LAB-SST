clc;
clear All;
clf;

t = [0:0.01:2];
x1 = sin(2*pi*10*t);
x2 = sin(2*pi*5*t)+sin(2*pi*50*t);
x3 = x1+x2;
noise = stdnormal_rnd(1,201);
X = x3+noise;
N = 1024;
Y = fftshift(fft(X,N));
fs = 1/0.01;
fval = fs*([(-N/2):((N/2)-1)]/N);

subplot(2,1,1);
plot(t,X,'r');
xlabel('Time');
ylabel('Amplitude')
subplot(2,1,2);
plot(fval,abs(Y), 'g');
xlabel('Frequency');
ylabel('Amplitude');
title('Signal with noise');
