%Adam Tran
%CSCI 378
%2/7/12

function Y = iimgRlc(R, owidth, olength)
%Converts a DCT compressed matrix back into an uncompressed matrix
%The original size is needed to remove padding

N = 8;

width = N-mod(owidth,N)+owidth; %Padded width and length
length = N-mod(olength,N)+olength;

%Split into blocks and inverse-DCT
for i=1:N:width
    for j=1:N:length
        [P,R] = getBlock(R);
        B = irlc(P,N); %De RLC
        B = izigzag(B); %De zigzag
        B = iq50(B); %De quantize
        Y(i:i+N-1,j:j+N-1) = B;
    end
end

%Remove padding
Y = Y(1:owidth, 1:olength);

end

