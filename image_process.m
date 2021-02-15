close all;
clear all;
clc;
I1=imread('medical.tif');
% I=rgb2gray(I1);
% J=double(I);
subplot(2,2,1);
imshow(I1)
title('original photo');
mu=normalization(I1);
subplot(2,2,2);
imshow(mu)
title('Normalized image');
c=1;
for l=0:1:10
temp(c)=entropy(mu,l);
c=c+1;
end
max_entrop=max(temp);
loc=find(temp==max_entrop);
lambda=(loc-1)*1;
muifs=membership_degree(mu,lambda);
subplot(2,2,3);
imshow(muifs)
title('IF image')
subplot(2,2,4);
filtered1=medianfilter(muifs);
imshow(filtered1);
title('Final image');
