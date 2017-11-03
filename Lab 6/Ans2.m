clc;
clf;
clear all;

n=50;
a1=1;
a2=-0.9;
x=a1.^[0:n-1];
h=a2.^[0:n-1];

n1=0:49;
n2=0:49;
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
stem(n3,y,'g');			#Plotting y1
y=y						#Displaying y1
title("y[n]-->n");
xlabel("n");
ylabel("y[n]");


