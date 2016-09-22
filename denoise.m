% Matlab Code for Image Noise Reduction using Order Statisticks Filters.

clc
clear all 
prompt = 'Give an Input Image:';
display prompt
x = imread('3.jpg');
%figure();
%subplot(221);
%imshow(x); 
%display 'Given Image';
%title('Input Image:')
mask1 = ones(3);
mask2 = ones(4);
% convert the rgb image to gray: y rgb2gray(x)
y = rgb2gray(x);
figure();
subplot(1,2,1); imshow(y);title('Input Image')
subplot(1,2,2); imhist(y);title('Histogram of Input Image')

b = medfilt2(y);

% subplot(1,2,1); imshow(x); and subplot(1,2,2); inhist(x);
%histogram equalisation
z = histeq(b);
%Plots:
figure();
subplot(2,2,1); imshow(b); title('Denoised Image By Median Filter')
subplot(2,2,2); imhist(b); title('Histogram of Image after Median Filter')
subplot(2,2,3); imshow(z); title('Histogram Equalisation Image')
subplot(2,2,4); imhist(z); title('Histogram Equalisation')



