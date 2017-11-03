clc;
clf;
clear all;

x=[4 2 -3 5 1 6 3 2 -1 4 2 4 -2];		#Declaring x[n]
h=[1/3 1/3 1/3];					#putting x[n]=delta[n] , h[n] is found when delta[n] is impulse function

n1=-4:8;
n2=-1:1;
n3=1:length(x)+length(h)-1;

#----------------------three point moving average(non-recursive) filter(Smoothing)------------------------

x1=[0 x 0];

for i = 2:14
	m(i-1)=(x1(i-1)+x1(i)+x1(i+1))/3;
endfor

subplot(3,1,1);
stem(n1,x,'b');					#Plotting x[n]-->n
title("x[n]-->n");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
stem(n1,m,'g');					#Plotting h[n]-->n
title("h[n]-->n");
xlabel("n");
ylabel("h[n]");

#-----------------Plotting of smooth x[n]*h[n]----------------
y=Convolution(m,h);					#Calling Convolution function and storing its result in y
subplot(3,1,3);
stem(n3,y,'r');					#Plotting y
y=y								#Displaying y
title("y[n]-->n");
xlabel("n");
ylabel("y[n]");

Convolution=conv(m,h)
