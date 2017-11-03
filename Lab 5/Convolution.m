function [y]=Convolution(x,h)

	len_x=length(x);
	len_h=length(h);

	l=len_x+len_h-1;
	
	if length(x)>length(h)
		h=[h zeros(1,length(x)-length(h))];            #
	else	
		x=[x zeros(1,length(h)-length(x))];            #
	endif

	f=fliplr(h);                    #Flipping of h
	
	for i= 1:l
		if i<=length(x)
			y(i)=sum(f(1,length(x)-i+1:length(x)).*x(1,1:i));
		else	 
			j=i-length(x);
			y(i)=sum(x(1,j+1:length(f)).*f(1,1:length(x)-j));
		endif		
	endfor

endfunction
