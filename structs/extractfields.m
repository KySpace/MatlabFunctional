% Extract certain fields from one structure and add to another,
% which could already contain fields.
% Modify the fields if specified. 
function s_o = extractfields(fns, s_i, s_o, fn_mod)
arguments
    fns      (1,:)   string  
    s_i
    s_o              = struct()
    fn_mod           {mustBeFunctionHandle}  = @id
end
    for idx = 1 : length(fns)
        fn = fns(idx);
        fn_new = fn_mod(fn);
        s_o.(fn_new) = s_i.(fn);
    end
end