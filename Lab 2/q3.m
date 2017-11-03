n=-20:20;
x=cos(pi * n/4);

plot(n,x);

disp("Maximiun Value of the Function is:"), disp(max(x));
disp("Minimum Value of the Function is:"), disp(min(x));
disp("No. of times Maximum value appears:"),
disp(sum(x(1,:)==max(x)));
disp("No. of times Minimum value appears:"),
disp(sum(x(1,:)==min(x)));