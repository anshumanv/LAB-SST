clc;
clear all;
clf;
t = -1:0.0002:1;
x = sin(2 * pi * t);
stem(t, x, 'r');
xlabel('time');
ylabel('amplitude');
title('sine');

