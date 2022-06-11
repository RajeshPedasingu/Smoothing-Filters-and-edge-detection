
function out=median_filter(image,hsize)
img2=image(:,:,1);

a=double(img2)/255;

[ht,wt,c]=size(a);
hsize;
d=ceil(hsize/2);

a1=a;
for i=0:ht-hsize
    for j=0:wt-hsize
        b=a([1+i:hsize+i],[1+j:hsize+j]);
        h=b;
        b1=median(h(:));
        a1(d+i,d+j)=b1;
    end
end

out=a1;


end


