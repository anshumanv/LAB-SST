pkg load ltfat

clc;
clear all;
clf;

n=8;
fs=1600;
[y, fs]=wavread('${WAV File}'); 
sound(y, fs);		

a=uquant(y,8);
sound(a,fs);

b=uquant(y,4);
sound(b,fs);

c=uquant(y,2);
sound(c,fs);
