clc; close all; clear all;

currentDir = pwd;
cd('C:\Users\usuario\Dropbox\Universidad\Maestria2\Vision\HybridImages\data');
imH = imread('sara.JPG');
imL = imread('jorge.JPG');

[x y z] = size(imH);
imL = imresize(imL,[x y]);

imL = rgb2gray(imL);
imH = rgb2gray(imH);

cd(currentDir);

% imH = rgb2gray(im1);
% imL = rgb2gray(im2);

% sigma = 15
filter = fspecial('gaussian', 15, 15);
imH_15 = abs(imsubtract(imH, imfilter(imH, filter)));
imL_15 = imfilter(imL, filter);
%imH_15 = cat(3, imH_15, imH_15, imH_15);
imHybrid_15 = imadd(imL_15, imH_15);

% sigma = 5
filter = fspecial('gaussian', 5, 5);
imH_5 = abs(imsubtract(imH, imfilter(imH, filter)));
imL_5 = imfilter(imL, filter);
%imH_5 = cat(3, imH_5, imH_5, imH_5);
imHybrid_5 = imadd(imL_5, imH_5);

% sigma = 3
filter = fspecial('gaussian', 3, 3);
imH_3 = abs(imsubtract(imH, imfilter(imH, filter)));
imL_3 = imfilter(imL, filter);
%imH_3 = cat(3, imH_3, imH_3, imH_3);
imHybrid_3 = imadd(imL_3, imH_3);

%sigma = 2
filter = fspecial('gaussian', 2, 2);
imH_2 = abs(imsubtract(imH, imfilter(imH, filter)));
imL_2 = imfilter(imL, filter);
%imH_2 = cat(3, imH_2, imH_2, imH_2);
imHybrid_2 = imadd(imL_2, imH_2);

%sigma = 1
filter = fspecial('gaussian', 100, 100);
imH_1 = abs(imsubtract(imH, imfilter(imH, filter)));
imL_1 = imfilter(imL, filter);
%imH_1 = cat(3, imH_1, imH_1, imH_1);
imHybrid_1 = imadd(imL_1, imH_1);
%imHybrid_1 = imresize(imHybrid_1, 0.7); %%%%%%% resized image

% figure
% subplot(1,5,1); imshow(imHybrid_1);
% subplot(1,5,2); imshow(imHybrid_2);
% subplot(1,5,3); imshow(imHybrid_3);
% subplot(1,5,4); imshow(imHybrid_5);
% subplot(1,5,5); imshow(imHybrid_15);
% drawnow

% Rescale images to produce pyramid
imHybrid_3 = imresize(imHybrid_3, 0.9);
imHybrid_5 = imresize(imHybrid_5, 0.85);
imHybrid_15 = imresize(imHybrid_15, 0.8);
% imHybrid_1 = imresize(imHybrid_1, 0.75);

% h1 = subplot(1,5,1);
% image(imHybrid_2)
% h2 = subplot(1,5,2);
% image(imHybrid_3)
% h3 = subplot(1,5,3); 
% image(imHybrid_5)
% h4 = subplot(1,5,4);
% image(imHybrid_15)
% h5 = subplot(1,5,5);
% image(imHybrid_1);
% linkaxes([h1, h2, h3, h4, h5])

figure
%subplot(1,5,1); imshow(imHybrid_2);
subplot(2,2,1); imshow(imHybrid_3); truesize;
pause()
subplot(2,2,2); imshow(imHybrid_5); truesize;
pause()
subplot(2,2,3); imshow(imHybrid_15); truesize;
pause()
subplot(2,2,4); imshow(imHybrid_1); truesize;
drawnow





