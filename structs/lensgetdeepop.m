% Access the deeper field like a lens getter
% If one field is missing during the path, return defaultval
function val = lensgetdeepop(fns, defaultval, s)
arguments
    fns         (1,:)   string  % field names
    defaultval
    s
end
    val = s;
    for i_f = 1 : numel(fns)
        fn = fns(i_f);
        if isprop(val, fn) || isfield(val, fn)
            val = val.(fn);
        else
            val = defaultval;
            return;
        end
    end
end