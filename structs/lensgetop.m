% Access the field like a lens getter
% if the structure does not contain the field, return defaultval
function fld = lensgetop(fieldname, defaultval, strt)
    arguments
        fieldname      % string
        defaultval     % default value for empty or non-existing field
        strt           % the input structure
    end
    if isprop(strt, fieldname) || isfield(strt, fieldname)
        fld = strt.(fieldname);
    else
        fld = defaultval;
    end
end