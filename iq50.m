function Q = iq50(X)
%Decodes the quantized DCT back into an 8x8 image matrix

Q = X.*qMatrix;
Q = round(idct(Q, dctA(8)));
Q = Q+128;

end

