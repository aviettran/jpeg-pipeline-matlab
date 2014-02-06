function Q = q50(X)
%Uses the Q50 quantizer on an input 8x8 image block

Q = X-128;
Q = dct(Q,dctA(8));
Q = round(Q./qMatrix);

end