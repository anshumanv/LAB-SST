clc;
clf;
clear all;
close all;

pkg load signal;

%sampling frequency
fc=500;
%duration of the signal
T=20;
%zero padding factor
my_zero=10;
%generate the signal
%The linspace function generates linearly spaced vectors. It is similar to the colon operator ":", but gives direct control over the number of points.
t=linspace(0,T,fc*T);	%It generates fc*T points between 0 to T with 
x=zeros(1,length(t));
%thresholds
th1=0.25*T*fc;		%sets threshold 1 to 2500
th2=0.5*T*fc;		%sets threshold 2 to 5000
th3=0.75*T*fc;		%sets threshold 3 to 7500
th4=T*fc;			%sets threshold 4 to 10000
%Generate cos waves between respected t points with number of points respective to their thresholds
x(1:th1)=cos(2*pi*10*t(1:th1));				%Generates a cos wave between 1 to 5 with 2500 points
x((th1+1):th2)=cos(2*pi*25*t((th1+1):th2));
x((th2+1):th3)=cos(2*pi*50*t((th2+1):th3));
x((th3+1):th4)=cos(2*pi*100*t((th3+1):th4));
figure 
plot(t,x);
title("Time Domain Signal");
xlabel("Time");
ylabel("Amplitude");

win_len=125;
figure;[a,b,c]=specgram(x,win_len,0.2*win_len,win_len,100);
colorbar;
surf(abs(c),abs(b),abs(a));
xlabel("time");
ylabel("frequency");
zlabel("amplitude");

win_len=250;
figure;[a,b,c]=specgram(x,win_len,0.2*win_len,win_len,100);
colorbar;
surf(abs(c),abs(b),abs(a));
xlabel("time");
ylabel("frequency");
zlabel("amplitude");

win_len=500;
figure;[a,b,c]=specgram(x,win_len,0.2*win_len,win_len,100);
colorbar;
surf(abs(c),abs(b),abs(a));
xlabel("time");
ylabel("frequency");
zlabel("amplitude");

win_len=750;
figure;[a,b,c]=specgram(x,win_len,0.2*win_len,win_len,100);
colorbar;
surf(abs(c),abs(b),abs(a));
xlabel("time");
ylabel("frequency");
zlabel("amplitude");

