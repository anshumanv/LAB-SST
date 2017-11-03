n=1:5;
x1=[1,2,3,4,5];
a=(mod(x1,2)==0);
b=(mod(x1,2)!=0);

subplot(3,1,1);
plot(n,a,'b');
title("Even parts of the sequence");
xlabel("Index");
ylabel("Value");

subplot(3,1,2);
plot(n,b,'g');
title("Odd parts of the sequence");
xlabel("Index");
ylabel("Value");

x2=[complex(1,6),complex(2,5),3,complex(4,3),complex(0,5)];
a=[];
b=[];
a=real(x2);
b=imag(x2);

subplot(3,1,3);
plot(a,b,'r');
title("Real and imagenary parts of the sequence");
xlabel("Real part");
ylabel("Imagenary part");