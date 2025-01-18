% Sort the elements of the cell by one token
function [sc, idx] = sortby_c(token, c)
arguments (Input)
    token     (1,1)      %       | a -> b    | the token, b can be ordered
    c         (1,:)      % 1 × m | {a}       | the cell array
end
arguments (Output)
    sc        (1,:)      % 1 × m | {a}       | the sorted cell array
    idx       (1,:)      % 1 × m | [integer] | the sorted indices
end
    ts = cell2mat(map_c(token, c));
    [~, idx] = sort(ts);
    sc = c(idx);
end