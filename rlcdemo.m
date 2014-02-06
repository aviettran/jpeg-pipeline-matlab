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
compressedR = imgRlc(X(:,:,1));
compressedG = imgRlc(X(:,:,2));
compressedB = imgRlc(X(:,:,3));

%Convert back to RGB
decoded(:,:,1) = iimgRlc(compressedR,width,length);
decoded(:,:,2) = iimgRlc(compressedG,width,length);
decoded(:,:,3) = iimgRlc(compressedB,width,length);

%Display encoded and decoded image
decoded = uint8(decoded);
image(decoded);
