function y=reccursion(n);

	y = zeros(1,n);				#Initialising y with zeros
	y(1) = 2;						#Let y(-1) and y(-2) to be stored in y(2) and y(1)
	y(2)= 1;						#Because indices can't be negative or zero
								#We will plot it from -2 to n so that the condition fulfills
	for k=3:n
		y(k)=1.143*y(k-1) - 0.4128*y(k-2);		#for zero input given difference equation
	endfor
	
end
