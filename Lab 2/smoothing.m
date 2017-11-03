function array2 = smoothing(array)
array2 = 1:length(array);
for i = 1:length(array)-1
	if (i == 1)
		array2(i) = (array(i) + array(i+1))/2;
	elseif(i == length(array))
		array2(i) = (array(i) + array(i+1))/2;
	else
		array2(i) = (array(i+1) + array(i+1) + array(i))/3;
	endif
endfor
endfunction