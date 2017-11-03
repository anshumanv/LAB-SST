clc;
clf;
clear all;

x=[0 0 1 1 1 1 1 ];		#x[n]=u[n-2]-u[n-7]
h=[1 1 1 1 1 1 1 1 1 1];	#h[n]=u[n]-u[n-10]

n1=0:6;
n2=0:9;
n3=1:length(x)+length(h)-1;

#-----------------Plotting of x[n] & h[n]-----------------------
subplot(3,1,1);
stem(n1,x,'b');		#Plotting x[n]-->n
title("x[n]-->n");
xlabel("n");
ylabel("x[n]");

subplot(3,1,2);
stem(n2,h,'g');		#Plotting h[n]-->n
title("h[n]-->n");
xlabel("n");
ylabel("h[n]");

#-----------------Plotting of x[n]*h[n]-------------------------
y=Convolution(x,h);			#Calling Convolution function and storing its result in y1
subplot(3,1,3);
stem(n3,y,'r');			#Plotting y
y=y						#Displaying y
title("y[n]-->n");
xlabel("n");
ylabel("y[n]");
