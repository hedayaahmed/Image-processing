function y = Mean(path1)
image= imread(path1);
image=rgb2gray(image);
image=double(image);
%image = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16];
image=padarray(image,[1 1]);
[rows,cols]=size(image);
newimage= zeros(rows-2,cols-2);
%display(image);
for i=2 :rows-1
    for j=2:cols-1
        tmp= image(i,j)+image(i-1,j)+image(i+1,j)+image(i+1,j+1)+image(i-1,j-1)+image(i,j+1)+image(i,j-1)+image(i+1,j-1)+image(i-1,j+1);
        newimage(i-1,j-1)= tmp/9;
        %display(tmp);
    end
end
y=uint8(newimage);
display(newimage);
end
