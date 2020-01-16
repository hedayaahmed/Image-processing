function y = Addition( path1,path2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
image1= imread(path1);
image2=imread(path2);
image1=rgb2gray(image1);
image2=rgb2gray(image2);
[rows,cols]=size(image1);
for i=1;i:rows
    for j=1;j:cols
        image1(i,j)=image1(i,j)+image2(i,j);
    end
end

y=uint8(image1);
end