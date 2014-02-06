%Adam Tran
%CSCI 378
%2/7/12

%This is a demo script which compresses and decompresses an image using
%imgDCT and imgIDCT

%Clear workspace
clear

%Get source image
X = imread('mandrill.png');

%Width and length of original
imgSize = size(X);
width = imgSize(1);
length = imgSize(2);

%Convert to double for processing
X = double(X);

%Convert each color (R,G,B)
compressed(:,:,1) = imgQ50(X(:,:,1));
compressed(:,:,2) = imgQ50(X(:,:,2));
compressed(:,:,3) = imgQ50(X(:,:,3));

%Convert back to RGB
decoded(:,:,1) = iimgQ50(compressed(:,:,1),width,length);
decoded(:,:,2) = iimgQ50(compressed(:,:,2),width,length);
decoded(:,:,3) = iimgQ50(compressed(:,:,3),width,length);

%Display encoded and decoded image
decoded = uint8(decoded);
image(decoded);
