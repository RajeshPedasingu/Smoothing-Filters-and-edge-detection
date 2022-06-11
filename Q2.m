clc;
clear all;
close all;

img1=imread('salt-pepper-noise.tif');
img2=imread('circuit-board.tif');

hsize1=3;% size of kernal 3
hsize2=5;% size of kernal 5
hsize3=7;% size of kernal 7

a1=median_filter(img1,hsize1);
a2=median_filter(img1,hsize2);
a3=median_filter(img1,hsize3);


figure;
subplot(2,2,1)
imshow(img1);
title('given image')
subplot(2,2,2)
imshow(a1);
x="median filter window= " + num2str(hsize1);
title(x)

subplot(2,2,3)
imshow(a2);
x="median filter window= " + num2str(hsize2);
title(x)

subplot(2,2,4)
imshow(a3);
x="median filter window= " + num2str(hsize3);
title(x)

%---img2------

a1=median_filter(img2,hsize2);
a2=median_filter(img2,hsize2);
a3=median_filter(img2,hsize3);


figure;
subplot(2,2,1)
imshow(img2);
title('given image')
subplot(2,2,2)
imshow(a1);
x="median filter window= " + num2str(hsize1);
title(x)

subplot(2,2,3)
imshow(a2);
x="median filter window= " + num2str(hsize2);
title(x)

subplot(2,2,4)
imshow(a3);
x="median filter window= " + num2str(hsize3);
title(x)




