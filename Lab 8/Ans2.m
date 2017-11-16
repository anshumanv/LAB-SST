
pkg load image;

im=imread('cameraman.tif');
mask=[1 1 1 1;1 1 1 1;1 1 1 1;1 1 1 1]/16;

mask=fft2(double(mask),size(im,1)*2,size(im,2)*2);
F=fft2(double(im),size(im,1)*2,size(im,2)*2);

FDF=mask.*F;
fdf=ifft2(FDF);
figure(1);
imshow(fdf,[]);
fdf=fdf(1:size(im,1),1:size(im,2));
figure(2);
imshow(im,[]);
figure(3);
imshow(fdf,[]);
