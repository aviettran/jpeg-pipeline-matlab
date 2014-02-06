function X = idct(Y, A)
%Inverses a DCT given a DCT matrix Y and a transform matrix A

X = A'*Y*A;

end

