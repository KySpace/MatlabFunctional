% convert a cell array to array, if applicable, that is 
% if every cell contains element of the same type
%        a      | sz | [c]
function a = celltoarray(c)
arguments
    c         % | sz | {c}   
end
    a = [];
    for i_c = 1 : numel(c)
        a = [a c{i_c}];
    end
end