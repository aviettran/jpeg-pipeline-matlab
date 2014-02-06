function Z = irlc (R, N)
%Inverts the run level coding, resulting in a zero filled zigzagged
%coefficcient array
%Requires the size of the original matrix, since this information is lost

index = 1; %Position in output array
Z(N^2) = 0; %Allocate N^2 spaces in the output array
sizeR = size(R);
length = sizeR(1);

%For each element in the RLC
for i=1:length
    row = R(i,:); %Get the row
    while(row(2) > 0)
        Z(index) = 0;
        index = index + 1;
        row(2) = row(2) - 1;
    end
    Z(index) = row(3);
    index = index + 1;
end

end

