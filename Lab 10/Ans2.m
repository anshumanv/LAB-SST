clc;
clf;
clear all;
close all;

pkg load signal;

NF=[0.21,3.14,-0.3+0.5i,-0.3-0.5i];
DF=[0.45,0.67,0.81+0.72i,0.81-0.72i];

k=2.2;

[num den]=zp2tf(NF,DF,k)
