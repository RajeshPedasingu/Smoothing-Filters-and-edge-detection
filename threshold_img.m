%thresholding

function out=threshold_img(image,threshold)
th=threshold;
img1=image;
%Img_histogram(img1) ; %histogram

img1(img1<th)=0;
img1(img1>=th)=255;
%img1=medfilt2(img1(:,:,1),[5 5]);

out=img1;
end
%thresholding
