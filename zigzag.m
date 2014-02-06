function Z = zigzag(X)
%Converts a 2D quantized matrix into a 1D zigzag matrix

%Get size
matSize = size(X);
width = matSize(1);
height = matSize(2);

%Direction vector
dx = 1;
dy = -1;

position = [1,1];
Z(width*height) = 0;

for i=1:width*height
    
    Z(i) = X(position(2), position(1));
    
    position(1) = position(1) + dx;
    position(2) = position(2) + dy;
    
    %Off the bottom, reset position and move right and up
    if (position(2) > height)
        position(1) = position(1) + 2;
        position(2) = position(2) - 1;
        dx = 1;
        dy = -1;
    end
    
    %Off the top, reset position and move left and down
    if (position(2) < 1)
        position(2) = 1;
        dx = -1;
        dy = 1;
    end
    
    %Off the left, reset position and move right and up
    if (position(1) < 1)
        position(1) = 1;
        dx = 1;
        dy = -1;
    end
    
    %Off the right, reset position and move left and down
    if (position(1) > width)
        position(1) = position(1) - 1;
        position(2) = position(2) + 2;
        dx = -1;
        dy = 1;
    end

end

