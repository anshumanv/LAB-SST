n=1:5;
x1=[1,2,3,4,5];
a=(x1+fliplr(x1))/2;
b=(x1-fliplr(x1))/2;

figure(1)
plot(n,x1);
title('Input Signal');

figure(2)
subplot(3,1,1);
stem(n,a,'b');
title("Even parts of the sequence");
xlabel("Index");
ylabel("Value");

subplot(3,1,2);
stem(n,b,'g');
title("Odd parts of the sequence");
xlabel("Index");
ylabel("Value");

x2=[1+6i 2-5i 4+3i 5i];

c=real(x2)
d=imag(x2)

subplot(3,1,3);
stem(c,d,'r');
title("Real and imaginary parts of the sequence");
xlabel("Real part");
ylabel("Imaginary part");
