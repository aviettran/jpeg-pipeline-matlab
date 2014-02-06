%Adam Tran
%CSCI 378
%2/7/12

function Y = iimgQ50(X, width, length)
%Converts a DCT compressed matrix back into an uncompressed matrix
%The original size is needed to remove padding

N = 8;
Y = X;

%Split into blocks and inverse-DCT
for i=1:N:width
    for j=1:N:length
        B = Y(i:i+N-1,j:j+N-1);
        B = iq50(B);
        Y(i:i+N-1,j:j+N-1) = B;
    end
end

%Remove padding
Y = Y(1:width, 1:length);

end

