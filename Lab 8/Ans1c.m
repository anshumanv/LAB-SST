clc
clf
clear all
close all

A=1;
 for i=1:100
     for j=1:100
         img1(i,j)=A+cos(2*pi*(1/200)*(10*(i-1)+20*(j-1)));
     endfor
 endfor

figure
imshow(abs(fftshift(fft2(img1))),[])

 for i=1:100
      for j=1:100
        img2(i,j)=A+cos(2*pi*(1/40)*(10*(i-1)+20*(j-1)));
      endfor
 endfor

figure
imshow(abs(fftshift(fft2(img2))),[])

 for i=1:100
     for j=1:100
        img3(i,j)=A+cos(2*pi*(1/20)*(10*(i-1)+20*(j-1)));
     endfor
 endfor

figure
imshow(abs(fftshift(fft2(img3))),[])



