function [] = make_icon_bk_transparent(filename)

cd 'C:\Users\VincelyVinoinDevpaul\Box\STARTUP\Marketing\website\Images'; 

img = imread(filename); fileOut = strcat(extractBefore(filename, '.'), '_bkRmv.png');

img_gray = rgb2gray(img); 
alpha = ones(size(img_gray));
alpha(img_gray>50) = 0;

imwrite(img, fileOut, 'Alpha', double(alpha));