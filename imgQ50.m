%Adam Tran
%CSCI 378
%2/7/12

function Y = imgQ50(X)
%This function uses DCT to compress a matrix of arbitrary size.
%If not divisible by 8, the input matrix will be padded.
%
%N is the size of the DCT blocks
%co is the number of DCT coefficients

%Pad the matrix to make it 8x8 divisible
N = 8; %Q50 is an 8x8 matrix
Y = X;
matSize = size(Y);

width = N-mod(matSize(1),N)+matSize(1); %Padded width and length
length = N-mod(matSize(2),N)+matSize(2);
Y(width,length) = 0;

%Split into blocks and DCT each
for i=1:N:width
    for j=1:N:length
        B = Y(i:i+N-1,j:j+N-1);
        B = q50(B);
        Y(i:i+N-1,j:j+N-1) = B;
    end
end

end

