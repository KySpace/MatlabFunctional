% quickly create a meshgrid and shift it to the new center.
function [X, Y] = quickmeshshft(imsz, shft)
arguments
    imsz    (1,2)
    shft    (1,2)       = [0,0]
end
    xarr = 1 : imsz(2);
    yarr = 1 : imsz(1);
    [X, Y] = meshgrid(xarr, yarr);
    X = X - shft(1);
    Y = Y - shft(2);
end