% If cond then left else right, supports lazy evaluation
% so that the right side doesn't need to be valid expression if the left side is false.
function o = ifthel(cond, left, right)
    if cond
        o = left();
    else 
        o = right();
    end
end