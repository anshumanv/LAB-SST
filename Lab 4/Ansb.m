pkg load ltfat;
clc;
clear all;
clf;

n=-5:0.01:5;
f=10;

figure(1);
fs3=10*f;
x3=sin(2*pi*(f/fs3)*n);
stem(n,x3,'g');
title("Original Signal");
xlabel("No. of Samples");
ylabel("Amplitude");

figure(2);
quantized1 = uquant(x3,10);
quantized2 = uquant(x3,8);
quantized3 = uquant(x3,6);
quantized4 = uquant(x3,4);
quantized5 = uquant(x3,3);

subplot(3,2,1);
stem(n,quantized1,'r');
title("Quantised Signal(10 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");

subplot(3,2,2);
stem(n,quantized2,'r');
title("Quantised Signal(8 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");

subplot(3,2,3);
stem(n,quantized3,'r');
title("Quantised Signal(6 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");

subplot(3,2,4);
stem(n,quantized4,'r');
title("Quantised Signal(4 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");

subplot(3,2,5);
stem(n,quantized5,'r');
title("Quantised Signal(3 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");

figure(3);
y1=x3-quantized1;
y2=rms(y1);
disp(y2);
subplot(3,2,1);
plot(n,y1,'b',n,quantized1,'r',n,x3,'g');
title("Error(10 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");
legend('x3-quantized1','quantized1','Original Signal');

y1=x3-quantized2;
y2=rms(y1);
disp(y2);
subplot(3,2,2);
plot(n,y1,'b',n,quantized2,'r',n,x3,'g');
title("Error(8 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");
legend('x3-quantized2','quantized2','Original Signal');

y1=x3-quantized3;
y2=rms(y1);
disp(y2);
subplot(3,2,3);
plot(n,y1,'b',n,quantized3,'r',n,x3,'g');
title("Error(6 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");
legend('x3-quantized3','quantized3','Original Signal');

y1=x3-quantized4;
y2=rms(y1);
disp(y2);
subplot(3,2,4);
plot(n,y1,'b',n,quantized4,'r',n,x3,'g');
title("Error(4 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");
legend('x3-quantized2','quantized4','Original Signal');

y1=x3-quantized5;
y2=rms(y1);
disp(y2);
subplot(3,2,5);
plot(n,y1,'b',n,quantized5,'r',n,x3,'g');
title("Error(3 bits)");
xlabel("No. of Samples");
ylabel("Amplitude");
legend('x3-quantized5','quantized5','Original Signal');

