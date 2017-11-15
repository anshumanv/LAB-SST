clear all;
clc;
clf;
#performing DTFT of input function
w = -4*pi:0.0001:4*pi;
a = 0.5;
x = 1./(1-a*exp(-j*w));
figure(1);
subplot(3,1,1);
title("a = 0.5");
plot(w,x);
subplot(3,1,2);
title("a = 0.5");
plot(w,abs(x));
subplot(3,1,3);
title("a = 0.5");
plot(w,angle(x));

a = 0.9;
x = 1./(1-a*exp(-j*w));

figure(2);
subplot(3,1,1);
title("a = 0.9");
plot(w,x);
subplot(3,1,2);
title("a = 0.9");
plot(w,abs(x));
subplot(3,1,3);
title("a = 0.9");
plot(w,angle(x));
