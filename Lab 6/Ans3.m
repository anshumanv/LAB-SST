clc;
clf;
clear all;

x=13;
y=reccursion(x)		#calling reccurence function for finding the soution
n = -2:x-3;				#determining indices
stem(n,y);			#plotting the solution
title("Solution of the given Difference Equation");
xlabel("Index(n)");
ylabel("y[n]");
