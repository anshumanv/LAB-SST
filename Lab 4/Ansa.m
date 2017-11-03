clc;
clear all;
clf;

n=-5:5;
f=10;
fs1=1.2*f;
fs2=2*f;
fs3=10*f;
x1=sin(2*pi*(f/fs1)*n);
x2=sin(2*pi*(f/fs2)*n);
x3=sin(2*pi*(f/fs3)*n);
subplot(3,1,1);
stem(n,x1,'b');
title("Under Sampling");
xlabel("No. of Samples");
ylabel("Amplitude");
subplot(3,1,2);
stem(n,x2,'g');
title("Critical Sampling");
xlabel("No. of Samples");
ylabel("Amplitude");
subplot(3,1,3);
stem(n,x3,'r');
title("Over Sampling");
xlabel("No. of Samples");
ylabel("Amplitude");

