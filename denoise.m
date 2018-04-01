I=imread('testimage\IMG_4340.jpg');%读取图像
for i=1:3
    J(:,:,i)=imnoise(I(:,:,i),'gaussian',0,0.04);%加入均值为0，方差为0.005的高斯噪声
    %采用MATLAB中的函数filter2对受噪声干扰的图像进行均值滤波
    K1(:,:,i)=filter2(fspecial('average',1),J(:,:,i))/255; %模板尺寸为1
    K2(:,:,i)=filter2(fspecial('average',5),J(:,:,i))/255;% 模板尺寸为5
    K3(:,:,i)=filter2(fspecial('average',7),J(:,:,i))/255; %模板尺寸为7
    K4(:,:,i)= filter2(fspecial('average',9),J(:,:,i))/255; %模板尺寸为9
end

subplot(2,3,1);imshow(I);
title('原始图像');

subplot(2,3,2); imshow(J);
title('加入高斯噪声之后的图像');
imwrite(J,'results\高斯噪声图像.jpg');
subplot(2,3,3);imshow(K1);

title('改进后的图像1');
subplot(2,3,4); imshow(K2);
title('改进后的图像2');
subplot(2,3,5);imshow(K3);
title('改进后的图像3');
subplot(2,3,6);imshow(K4);
title('改进后的图像4'); 
imwrite(K4,'results\去除噪声后的图像.jpg');