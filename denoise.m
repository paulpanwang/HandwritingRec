I=imread('testimage\IMG_4340.jpg');%��ȡͼ��
for i=1:3
    J(:,:,i)=imnoise(I(:,:,i),'gaussian',0,0.04);%�����ֵΪ0������Ϊ0.005�ĸ�˹����
    %����MATLAB�еĺ���filter2�����������ŵ�ͼ����о�ֵ�˲�
    K1(:,:,i)=filter2(fspecial('average',1),J(:,:,i))/255; %ģ��ߴ�Ϊ1
    K2(:,:,i)=filter2(fspecial('average',5),J(:,:,i))/255;% ģ��ߴ�Ϊ5
    K3(:,:,i)=filter2(fspecial('average',7),J(:,:,i))/255; %ģ��ߴ�Ϊ7
    K4(:,:,i)= filter2(fspecial('average',9),J(:,:,i))/255; %ģ��ߴ�Ϊ9
end

subplot(2,3,1);imshow(I);
title('ԭʼͼ��');

subplot(2,3,2); imshow(J);
title('�����˹����֮���ͼ��');
imwrite(J,'results\��˹����ͼ��.jpg');
subplot(2,3,3);imshow(K1);

title('�Ľ����ͼ��1');
subplot(2,3,4); imshow(K2);
title('�Ľ����ͼ��2');
subplot(2,3,5);imshow(K3);
title('�Ľ����ͼ��3');
subplot(2,3,6);imshow(K4);
title('�Ľ����ͼ��4'); 
imwrite(K4,'results\ȥ���������ͼ��.jpg');