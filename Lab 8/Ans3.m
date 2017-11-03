clc; 
clear all;
clf;
close all;

[y,fs]=wavread('audio.wav'); %audio wav file for input file
t=linspace(0,length(y)/fs,length(y));
plot(t,y);
title('Original sound');
xlabel('time');
ylabel('samples');

Nfft=1024;
f=linspace(0,fs,Nfft);
m=abs(fft(y,Nfft));
figure
plot(f(1:Nfft/2),m(1:Nfft/2));
title('Fourier Transform');

N_order=10;
R=120;
fc=2000;
WST=2*fc/fs;

#lowpass filtering
[DEN_bas,NUM_bas]=cheby2(N_order,R,WST,'low');
M_bas=filter(DEN_bas,NUM_bas,y);

#writing the file
wavwrite(M_bas,fs,'/home/hershey/Desktop/out.wav') %path where you want to save your output





