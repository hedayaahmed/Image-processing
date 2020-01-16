function y = Histogram(image)
image=imread(image);
image=rgb2gray(image);
%image=[6 15 8 4;9 2 14 10;13 16 3 12;3 11 7 1];
frq=zeros(256,1);
[rows,cols]=size(image);


for i=1:rows
    for k=1:cols
      frq(image(i,k)+1) = frq(image(i,k)+1) + 1;
    end
end

for i=1:256
      frq(i) = frq(i) / (rows*cols);
end
for i=2:256
      frq(i) = frq(i) + frq(i-1);    
end
for i=1:256
      frq(i) = frq(i) * 255;    
end
display(image);
for i=1:rows
    for k=1:cols
      image(i,k) = frq(image(i,k)+1);
    end
end

display(image);
y=uint8(image);
