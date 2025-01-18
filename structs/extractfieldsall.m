% Extract all fields from one structure and add to another,
% which could already contain fields.
% Modify the fields if specified. 
function s_o = extractfieldsall(s_i, s_o, fn_mod)
arguments
    s_i
    s_o              
    fn_mod           {mustBeFunctionHandle}  = @id
end
    fns = stringcelltoarray(fieldnames(s_i));
    s_o = extractfields(fns, s_i, s_o, fn_mod);
end