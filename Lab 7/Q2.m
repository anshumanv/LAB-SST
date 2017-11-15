#Input Function is x
x = ones(1,10);
N = 1:11;
a = 5;
b = -(12*pi/a):0.0001:(12*pi/a);
x = sin(b*((2*a)+1)/2)./sin(b/2);
subplot(3,1,1);
plot(b,x);
#PLotting fourier transformation of x i.e.,it's magnitude and phase Which is a sinc function
subplot(3,1,2)
plot(b,abs(x));

subplot(3,1,3)
plot(b,angle(x));
