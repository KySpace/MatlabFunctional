% Access the field like a lens getter
% if the structure is empty, return defaultval
function fld = lensget(fieldname, defaultval, strt)
    arguments
        fieldname      % char array or string
        defaultval     % default value for empty or non-existing field
        strt           % the input structure
    end
    if isempty(strt)
        fld = defaultval;
    else
        fld = strt.(fieldname);
    end
end