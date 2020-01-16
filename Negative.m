function y = Negative( path1 )
image1= imread(path1);
image1=rgb2gray(image1);
[rows,cols]=size(image1);
for i=1 :rows
    for j=1:cols
        image1(i,j)= 255- image1(i,j);
    end
end
y=uint8(image1);
end