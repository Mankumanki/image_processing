function output=medianfilter(image)
[M,N]=size(image);
for i=2:M-1
    for j=2:N-1
        Med(1)=image(i-1,j-1);
        Med(2)=image(i+1,j+1);
        Med(3)=image(i-1,j+1);
        Med(4)=image(i+1,j-1);
        Med(5)=image(i,j-1);
        Med(6)=image(i,j+1);
        Med(7)=image(i-1,j);
        Med(8)=image(i+1,j);
        Med(9)=image(i,j);
        filtered(i,j)=median(Med);
    end
end
output=filtered;
end