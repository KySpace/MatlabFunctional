% Swap the two object under a certain condition.
function [c, d] = swapcond(cond, a, b)
    c = ifthel( cond, a, b);
    d = ifthel(~cond, b, a);
end