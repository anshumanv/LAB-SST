clc;
clf;
clear all;

x=[2 4 -2 0];				#x[1]=2,x[2]=4,x[3]=-2; otherwise 0
h=[1 0.5 0];				#putting x[n]=delta[n] , h[n] is found when delta[n] is impulse function

n1=0:3;
n2=0:2;
n3=1:length(x)+length(h)-1;

#-----------------Plotting of x[n] & h[n]-----------------------
subplot(3,1,1);
stem(n1,x,'b');			#Plotting x[n]-->n
title("x[n]-->n");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
stem(n2,h,'g');			#Plotting h[n]-->n
title("h[n]-->n");
xlabel("n");
ylabel("h[n]");

#-----------------Plotting of x[n]*h[n]----------------
y=Convolution(x,h);			#Calling Convolution function and storing its result in y
subplot(3,1,3);
stem(n3,y,'r');			#Plotting y
y=y						#Displaying y
title("y[n]-->n");
xlabel("n");
ylabel("y[n]");


