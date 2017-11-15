clc;
clear all;
clf;

N=5;
n=0:4;
t=-2:2;
t1=-22:27;
#INPUT function is x
x=[-0.5 0 0 0.5 1];

#y is DTFS of x
y=(fft(x,N))/N;

subplot(4,1,1);
stem(t,x);
xlabel('n');
ylabel('Input Function');

subplot(4,1,2);
stem(n,abs(y));
xlabel('n');
ylabel('Fourier Transformation of input function');
y=[y(4:5) y(1:3)];
subplot(4,1,3);
stem(t,abs(y));
y1=y;
a=50;
for i=1:(a/N)-1
	y1=[y1 y];
endfor

#plotting for 50 points, since input is periodic it will repeat it's value
subplot(4,1,4);
stem(t1,abs(y1));	
