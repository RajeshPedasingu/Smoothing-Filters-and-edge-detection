clc;
clear all;
close all;

img1=imread('Lena_noisy.jpg');
img2=imread('Cameraman.png');

hsize1=3;% size of kernal
hsize2=5;
hsize3=7;

h1 = fspecial('average',hsize1);
h2 = fspecial('average',hsize2);
h3 = fspecial('average',hsize3);


a1=smoothing_filter(img1,h1);
a2=smoothing_filter(img1,h2);
a3=smoothing_filter(img1,h3);



figure;
subplot(2,2,1)
imshow(img1);
title('given image')
subplot(2,2,2)
imshow(a1);
x="averaging filter window= " + num2str(hsize1);
title(x)

subplot(2,2,3)
imshow(a2);
x="averaging filter window= " + num2str(hsize2);
title(x)

subplot(2,2,4)
imshow(a3);
x="averaging filter window= " + num2str(hsize3);
title(x)



a1=smoothing_filter(img2,h1);
a2=smoothing_filter(img2,h2);
a3=smoothing_filter(img2,h3);
figure;
subplot(2,2,1)
imshow(img2);
title('given image')
subplot(2,2,2)
imshow(a1);
x="averaging filter window= " + num2str(hsize1);
title(x)

subplot(2,2,3)
imshow(a2);
x="averaging filter window= " + num2str(hsize2);
title(x)

subplot(2,2,4)
imshow(a3);
x="averaging filter window= " + num2str(hsize3);
title(x)


%------------------

h1 = fspecial('gaussian',hsize1,2);
h2 = fspecial('gaussian',hsize2,2);
h3 = fspecial('gaussian',hsize3,2);

a1=smoothing_filter(img1,h1);
a2=smoothing_filter(img1,h2);
a3=smoothing_filter(img1,h3);

figure;
subplot(2,2,1)
imshow(img1);
title('given image')
subplot(2,2,2)
imshow(a1);
x="gaussian filter window= " + num2str(hsize1);
title(x)

subplot(2,2,3)
imshow(a2);
x="gaussian filter window= " + num2str(hsize2);
title(x)

subplot(2,2,4)
imshow(a3);
x="gaussian filter window= " + num2str(hsize3);
title(x)



%--
a1=smoothing_filter(img2,h1);
a2=smoothing_filter(img2,h2);
a3=smoothing_filter(img2,h3);

figure;
subplot(2,2,1)
imshow(img2);
title('given image')
subplot(2,2,2)
imshow(a1);
x="gaussian filter window= " + num2str(hsize1);
title(x)

subplot(2,2,3)
imshow(a2);
x="gaussian filter window= " + num2str(hsize2);
title(x)

subplot(2,2,4)
imshow(a3);
x="gaussian filter window= " + num2str(hsize3);
title(x)

