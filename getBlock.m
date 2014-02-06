function [B,R] = getBlock(R)
%Given an RLC matrix, this function will get a single block (terminated by
%a 1 in position 1)

%Returns B, the block, and R, the remaining RLC

row = R(1,:);
count = 1;
while (row(1) ~= 1)
    count = count + 1;
    row = R(count,:);
end
B = R(1:count,:);
R(1:count,:) = [];

end

