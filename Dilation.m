function y = Dilation(path1)
image= imread(path1);
image=rgb2gray(image);
image=im2bw(image);
%image = [1 0 0 1; 1 1 0 1; 0 0 1 1; 0 1 0 1];
image=padarray(image,[1 1]);
[rows,cols]=size(image);
newimage= zeros(rows,cols);
B = [1 0 1; 0 0 1; 1 0 0];
B = flipud(fliplr(B));
for i=2 :rows-1
    for j=2:cols-1
        a=1;
        for r=i-1: i+1;
            b=1;
            for c=j-1:j+1
                if B(a,b) == 1 
                    if image(r,c)==1
                        newimage(i,j) = 1;
                    end
                end
                b=b+1;
            end
            a=a+1;
        end
    end
end
y=uint8(newimage);
display(newimage);
end