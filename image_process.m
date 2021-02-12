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
[lambda,IF]=entropy(mu);
muifs=membership_degree(mu,lambda);
vifs=non_membership_degree(mu,lambda);
piifs=1-vifs-muifs;
subplot(2,2,3);
imshow(muifs)
title('IF image')
subplot(2,2,4);
filtered1=medianfilter(muifs);
Z=medianfilter(mu);
imshow(abs(filtered1-Z));
title('Final image');
