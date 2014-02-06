%Adam Tran
%CSCI 378
%2/28/12

%This shows the linear combination of a DCT
clear

%Original
imread('grad.png');

%Get B&W matrix
X = imread('grad.png');
result1 = X;
result2 = X;
X = X(:,:,1); %Get one color
X = X - 128; %Center around 0
X = double(X); %Convert to double

A = dctA(8);

%Separate into DCTs
D = dct(X, A);

d1 = zeros(8);
d2 = zeros(8);

d1(1,2) = D(1,2);
d2(2,1) = D(2,1); %Get the individual DCTs

%Create two resulting images by reversing this process
img1 = idct(d1, A);
img2 = idct(d2, A);

img1 = img1 + 128;
img2 = img2 + 128;

img1 = uint8(img1);
img2 = uint8(img2);

%Create new images, one for each DCT
result1(:,:,1) = img1;
result1(:,:,2) = img1;
result1(:,:,3) = img1;

result2(:,:,1) = img2;
result2(:,:,2) = img2;
result2(:,:,3) = img2;

%Save results
imwrite(result1, 'dct1.png', 'png');
imwrite(result2, 'dct2.png', 'png');