function y = Median(path1)
image= imread(path1);
image=rgb2gray(image);
%image=double(image);
tmp=zeros(9,1);
%image = [1 2 3 9; 5 6 8 7; 1 2 3 8; 4 5 6 9];
image=padarray(image,[1 1]);
[rows,cols]=size(image);
newimage= zeros(rows-2,cols-2);
for i=2 :rows-1
    for j=2:cols-1
        tmp(1)= image(i,j);
        tmp(2)= image(i-1,j);
        tmp(3)=image(i+1,j);
        tmp(4)=image(i+1,j+1);
        tmp(5)=image(i-1,j-1);
        tmp(6)=image(i,j+1);
        tmp(7)=image(i,j-1);
        tmp(8)=image(i+1,j-1);
        tmp(9)=image(i-1,j+1);
        tmp=sort(tmp);
        newimage(i-1,j-1)=tmp(5);
    end
end
y=uint8(newimage);
display(newimage);
end