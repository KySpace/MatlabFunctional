% Optionally extract certain fields from one structure and add to another,
% which could already contain fields.
% Ignore field names that aren't fields in struct yet.
% Modify the fields if specified. 
function s_o = extractfieldsop(fns, s_i, s_o)
    arguments
        fns      (1,:)   string  
        s_i
        s_o              = struct()
    end
        mask = isfield(s_i, fns);
        s_o = extractfields(fns(mask), s_i, s_o);
    end