f=1;
t=0:0.01:2;
x=sin(2*pi*f*t);
subplot(2,1,1);
plot(t,x,'r');
title("Periodic sinusoidal sequences in continuous time");
xlabel("Time");
ylabel("X");
subplot(2,1,2);
stem(t,x,'g');
title("Periodic sinusoidal sequences in discrete time");
xlabel("Time");
ylabel("X");

