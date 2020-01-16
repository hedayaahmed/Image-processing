function y = Erosion( path1 )
image1= imread(path1);
image1=rgb2gray(image1);
[rows,cols]=size(image1);
image1=im2bw(image1,0.5);
image1=double(image1);
b=[1 0 1;0 0 1;1 0 0];
b = flipud(fliplr(b));
newImage = zeros(rows,cols);
for i = 2:rows-1
    for k = 2:cols-1
        count=0;
        o=1;
        oo=1;
        for x=i-1:i+1
            o=1;
            for y=k-1:k+1
                if (image1(x,y)==1&&b(o,oo)==1)
                    count=count+1;
                end
                o=o+1;
            end
                oo=oo+1;
        end
        if (count==4)
            image1(i-1,k-1)=1;
        end
    end
end
y=image1;
end