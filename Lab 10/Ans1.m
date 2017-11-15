clc;
clf;
clear all;
close all;

pkg load signal;

num=[2,16,44,56,32];
den=[3,3,-15,18,-12];
NF=roots(num)
DF=roots(den)
figure(1);
zplane(NF,DF)
#figure(2);
#zplane(num,den)
k=num(1)/den(1)

