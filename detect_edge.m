clc; clear all; close all;
I=imread('D:\MATLAB\bin\lena512x512.jpg');
I1=rgb2gray(I);
BW = edge(I1,'Canny');
figure;
imshow(BW);
title('Canny');

BW1 = edge(I1,'Sobel');
figure;
imshow(BW1);
title('Sobel');


%%%%%%%%%%%%%%%%%%%% dwt2-
Img=imread('D:\MATLAB\bin\lena.jpg');
Img1=uint8(rgb2gray(Img));
[LoD,HiD] = wfilters('haar','d');
[cA,cH,cV,cD] = dwt2(Img1,LoD,HiD,'mode','symh');
% [cA,cH,cV,cD] = dwt2(Img,LoD,HiD,'mode','symh');
figure;
subplot(2,2,1)
imagesc(cA)
colormap gray
title('Approximation')
subplot(2,2,2)
imagesc(cH)
colormap gray
title('Horizontal')
subplot(2,2,3)
imagesc(cV)
colormap gray
title('Vertical')
subplot(2,2,4)
imagesc(cD)
colormap gray
title('Diagonal')



