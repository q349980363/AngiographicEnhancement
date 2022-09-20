Im = imread('022.bmp'); %读入图片（三通道RGB图像）
%subplot(4,4,1); %此处是为了后面显示方便，在一个页面中显示$4*4$张图

GrayPic=rgb2gray(Im);
R = Im(:,:,1);
G = Im(:,:,2);
B = Im(:,:,3);


hist_image=imhist(GrayPic);%原始图像的灰度图像的直方图
hist_r=imhist(R);%R部分的直方图
hist_g=imhist(G);%G部分的直方图
hist_b=imhist(B);%B部分的直方图


subplot(4,3,1);
imshow(Im);
title('原图');

subplot(4,3,2);
imshow(GrayPic);
title('灰度图');

subplot(4,3,3);
bar(hist_image);
title('原始图像的灰度图像的直方图')

%%R通道
subplot(4,3,4);
imshow(R);
title('R');

%%G通道
subplot(4,3,5);
imshow(G);
title('G');

%%B通道
subplot(4,3,6);
imshow(B);
title('B');

%%测试RG
rg=R-G;
rg=rg;
subplot(4,3,7);
imshow(rg);
title('R-G');

%%测试RB
rb=R-B;
rb=rb;
subplot(4,3,9);
imshow(rb);
title('R-B');

%%测试RG+RB
rgrb=rg+rb;
subplot(4,3,8);
imshow(rgrb);
title('RG+RB');


rgrb2double=im2double(rgrb);
rgrb2double=rgrb2double.*rgrb2double.*2;
rgrbuint8=uint8(rgrb2double*255);
subplot(4,3,10);
imshow(rgrb2double);
title('rgrb2double^2*5');


%%测试5
t6 = rgbEnhancement3(rgrb/3.5,Im);
subplot(4,3,11);
imshow(t6);
imwrite(t6,"t6.png")
title('增强1 线性 rgrb');


%%测试5
t7 = rgbEnhancement3(rgrbuint8,Im);
subplot(4,3,12);
imshow(t7);
imwrite(t7,"t7.png")
title('增强2 非线性 rgrb2double^2*5');