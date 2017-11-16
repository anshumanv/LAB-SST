t=0:0.01:2;
x1=6*sin(2*pi*5*t);
x2=8*sin(2*pi*5*t);

subplot(4,3,1);
plot(t,x1,'b');
title("Plot of x1");
xlabel("Time");
ylabel("x1");

subplot(4,3,2);
plot(t,x2,'g');
title("Plot of x2");
xlabel("Time");
ylabel("x2");
x3=x1+x2;

subplot(4,3,3);
plot(t,x3,'r');
title("Addition");
xlabel("Time");
ylabel("X");
x4=x1.*x2;

subplot(4,3,4);
plot(t,x4,'y');
title("Multiplication");
xlabel("Time");
ylabel("X");
x5=6*x1;

subplot(4,3,5);
plot(t,x5,'b');
title("Amplitude scaling of x1");
xlabel("Time");
ylabel("x1");
x5=6*x2;

subplot(4,3,6);
plot(t,x5,'g');
title("Amplitude scaling of x2");
xlabel("Time");
ylabel("x2");
t1=2*t;
x5=6*sin(2*pi*5*t1);

subplot(4,3,7);
plot(t,x5,'b');
title("Time scaling of x1");
xlabel("Time");
ylabel("x1");
x5=8*sin(2*pi*5*t1);

subplot(4,3,8);
plot(t,x5,'g');
title("Time scaling of x1");
xlabel("Time");
ylabel("x2");
t1 = t*1.5;
x5=6*sin(2*pi*5*t1);

subplot(4,3,9);
plot(t,x5,'b');
title("Time shifting of x1");
xlabel("Time");
ylabel("x1");
x5=8*sin(2*pi*5*t1);

subplot(4,3,10);
plot(t,x5,'g');
title("Time shifting of x2");
xlabel("Time");
ylabel("x2");
t1 = t;
x5=6*sin(2*pi*5*t1);

subplot(4,3,11);
plot(t,x5,'b');
title("Time reversal of x1");
xlabel("Time");
ylabel("x1");

x5=8*sin(2*pi*5*t1);
subplot(4,3,12);
plot(t,x5,'g');
title("Time reversal of x2");
xlabel("Time");
ylabel("x2");
