function R = rlc(X)
%Outputs a run-level encoded matrix (3xlength).
%Input is a zigzagged coefficient array.

index = 1; %Code number
count = 0; %Run

for i=1:length(X)
    if (X(i) ~= 0)
        %Create a new run-level coding row (last, run, level)
        row(2) = count; %Run
        row(3) = X(i); %Level
        R(index, :) = row;
        index = index + 1; %Increment code number
        count = 0; %Reset run to zero
    else
        count = count + 1; %Another zero, increment run
    end
end
R(index-1, 1) = 1; %Set last to 1
