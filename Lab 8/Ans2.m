pkg load image;

im=imread("cameraman.tif"); 	%image file as input
mask = [1 1 1 1 ; 1 1 1 1 ; 1 1 1 1 ; 1 1 1 1]/16;
p_size=paddedsize(size(im));
mask=fft2(double(mask), p_size(1), p_size(2));
F=fft2(double(im),p_size(1),p_size(2));
FDF=mask.*F;
fdf=ifft2(FDF);
fdf=fdf(1:size(im,1),1:size(im,2));
         
figure(1)
imshow(im,[]);

        
figure(2)
imshow(fdf,[]);
