clc;
clear all;
close all;

img1=imread('House.jpg');

hsize=3;% size of kernal 
h1 =[-1 -2 -1;0 0 0;1 2 1];%horizantal edge detection sobel filter
h2=h1';  % vertical edge detection sobel filter

%for image-1
a1=edge_filter(img1,h1); % horizantal edge 
a2=edge_filter(img1,h2); % vertical edge 


k1=a1;
k2=a2;

%------- Q3_c part (magnitude of gradient)-------
a11=double(a1)/255;
a22=double(a2)/255;
b1=sqrt(a11.^2+a22.^2)*255;

figure;
subplot(2,2,1)
imshow(img1);
title('given image')
subplot(2,2,2)
imshow(a1);
title('horizantal edges')
subplot(2,2,3)
imshow(a2);
title('vertical edges')
subplot(2,2,4)
imshow(b1)
title('magnitude of edges')

%2nd image
%for image-2
img2=imread('Bricks.jpg');

a3=edge_filter(img2,h1); % horizantal edge 
a4=edge_filter(img2,h2); % vertical edge

k3=a3;
k4=a4;

a33=double(a3)/255;
a44=double(a4)/255;
b2=sqrt(a33.^2+a44.^2)*255;

figure;
subplot(2,2,1)
imshow(img2);
title('given image')
subplot(2,2,2)
imshow(a3);
title('horizantal edges')
subplot(2,2,3)
imshow(a4);
title('vertical edges')
subplot(2,2,4)
imshow(b2)
title('magnitude of edges')
% ------end-----

b_1=uint8(b1*255);
b_2=uint8(b2*255);


%-------thresholding----------
mg1=threshold_img(b_1,100);
mg2=threshold_img(b_2,100);
%--end---
figure;
subplot(2,1,1)
imshow(mg1)
title('after thresholding magnitude of edges image-1')
subplot(2,1,2)
imshow(mg2)
title('after thresholding magnitude ofedges image-2')

%--------------diagonal edge detection --------
c1=k2./k1;
C2=atan(c1);
m1=C2*180/pi;
m2=(m1>=40 & m1<=50 | m1>=-50 & m1<=-40 | m1 >=-140 & m1<=-130 | m1>=130 & m1<=140);

mg1=double(mg1);
f1=m2.*b1;

figure;
subplot(2,1,1)
imshow(f1)
title('diagonal edges(45 and 135 degrees)in image-1')

%--------------diagonal edge detection --------
p1=k4./k3;
p2=atan(p1);
m3=p2*180/pi;
m4=(m3>=40 & m3<=50 | m3>=-50 & m3<=-40 | m3 >=-140 & m3<=-130 | m3>=130 & m3<=140);

mg2=double(mg2);
f2=m4.*b2;

subplot(2,1,2)
imshow(f2)
title('diagonal edges(45 and 135 degrees)in image-2')



