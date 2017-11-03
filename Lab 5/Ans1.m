clc;
clf;
clear all;

x=[1 1 1 1];			#x[n]=1 ; 0<=x<=3
h=[1 1 1];			#h[n]=1 ; 0<=x<=2

n1=0:3;
n2=0:2;
n3=1:length(x)+length(h)-1;

#-----------------Plotting of x[n] & h[n]-----------------------
subplot(2,2,1);
stem(n1,x,'b');		#Plotting x[n]-->n
title("x[n]-->n");
xlabel("n");
ylabel("x[n]");

subplot(2,2,3);
stem(n2,h,'g');		#Plotting h[n]-->n
title("h[n]-->n");
xlabel("n");
ylabel("h[n]");

#-----------------Plotting of x[n]*h[n]-------------------------
y1=Convolution(x,h);		#Calling Convolution function and storing its result in y1
subplot(2,2,2);
stem(n3,y1,'g');			#Plotting y1
y1=y1					#Displaying y1
title("y1[n]-->n");
xlabel("n");
ylabel("y1[n]");

#-----------------Plotting of h[n]*x[n]--------------------------
y2=Convolution(h,x);		#Calling Convolution function and storing its result in y2
subplot(2,2,4);
stem(n3,y2,'b');			#Plotting y2
y2=y2					#Displaying y2
title("y2[n]-->n");
xlabel("n");
ylabel("y2[n]");

#---------------Result of inbuilt Convolution--------------------
Convolution=conv(x,h)		#Comparing the result with in built conv function
