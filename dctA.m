%Adam Tran
%CSCI 378
%2/7/12

function A = dctA(N)
%Returns a DCT transform Matrix
%Formula from H.264 and MPEG-4 Video Compression

A = zeros(N, N);

for i = 0:N-1
    if i == 0
        Ci = sqrt(1/N);
    else
        Ci = sqrt(2/N);
    end
    for j = 0:N-1
        A(i+1,j+1) = Ci*cos((2*j+1)*i*pi/(2*N));
    end

end