function [ output_args ] = Hisstem( input_args )
rgbImage=imread('A.png');
I_gray=rgb2gray(rgbImage);
[height,width]=size(I_gray);
r=zeros(1,256);
for i=1:height
   for j=1:width
       r(I_gray(i,j)+1)= r(I_gray(i,j)+1)+1;
    end
end  %计算灰度直方图中的数值：每个灰度级对应的像素数目。
subplot(1,2,1);stem(r);
title('计算所得灰度图像直方图');


rgbImage=imread('B.png');
I_gray=rgb2gray(rgbImage);
[height,width]=size(I_gray);
r=zeros(1,256);
for i=1:height
   for j=1:width
       r(I_gray(i,j)+1)= r(I_gray(i,j)+1)+1;
    end
end  %计算灰度直方图中的数值：每个灰度级对应的像素数目。
subplot(1,2,2);stem(r);
title('计算所得灰度图像直方图');