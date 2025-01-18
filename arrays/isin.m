% Check if, for each `query` array element, there is some `set` element that matches it 
%        b       [bool]  1 × m 
function b = isin(query, set)
arguments
    query       % [a]   | 1 × m | the query
    set         % [a]   | 1 × n | the set
end
    b = false(size(query));
    for i_q = 1 : numel(query)
        b(i_q) = any(query(i_q) == set);
    end
end