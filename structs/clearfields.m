% assign the targeted fields in the structs by `[]`
function s = clearfields(fns, s)
arguments
    fns         string
    s           struct
end
    for sidx = 1 : length(s)
    for fidx = 1 : length(fns)
        s(sidx).(fns(fidx)) = [];
    end
    end
end