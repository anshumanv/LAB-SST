clc;
clf;
clear all;
close all;

pkg load signal;

num=[18]
den=[18,3,-4,-1]

[z,p,k]=residuez(num,den)
