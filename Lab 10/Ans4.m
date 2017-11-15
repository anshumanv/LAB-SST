clc;
clf;
clear all;
close all;

pkg load signal;
num=[1,2];
den=[1,0.4,-0.12];
[x,t]=impz(num,den,11)
