clc,clear,close all;
originalPic=imread('cameraman.tif');
[M,N]=size(originalPic);
h1=[-1,0,1;                 %Prewitt 滤波器
    -1,0,1;
    -1,0,1];
h2=[-1,-1,-1;
    0,0,0;
    1,1,1];
xPic=myFilter(h1,originalPic);
yPic=myFilter(h2,originalPic);
subplot(2,2,1),imshow(originalPic),title('\fontsize{16}原始图片');
subplot(2,2,2),imshow(xPic),title('\fontsize{16}x方向梯度');
subplot(2,2,3),imshow(yPic),title('\fontsize{16}y方向梯度');
subplot(2,2,4),imshow(xPic+yPic),title('\fontsize{16}合成梯度图');
set(gcf,'unit','normalized','position',[0,0,1.0,1.0]);
saveas(gcf,strcat(mfilename,'_pic'),'jpg');