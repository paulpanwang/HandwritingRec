function [ output_args ] = Hisstem( input_args )
rgbImage=imread('A.png');
I_gray=rgb2gray(rgbImage);
[height,width]=size(I_gray);
r=zeros(1,256);
for i=1:height
   for j=1:width
       r(I_gray(i,j)+1)= r(I_gray(i,j)+1)+1;
    end
end  %����Ҷ�ֱ��ͼ�е���ֵ��ÿ���Ҷȼ���Ӧ��������Ŀ��
subplot(1,2,1);stem(r);
title('�������ûҶ�ͼ��ֱ��ͼ');


rgbImage=imread('B.png');
I_gray=rgb2gray(rgbImage);
[height,width]=size(I_gray);
r=zeros(1,256);
for i=1:height
   for j=1:width
       r(I_gray(i,j)+1)= r(I_gray(i,j)+1)+1;
    end
end  %����Ҷ�ֱ��ͼ�е���ֵ��ÿ���Ҷȼ���Ӧ��������Ŀ��
subplot(1,2,2);stem(r);
title('�������ûҶ�ͼ��ֱ��ͼ');