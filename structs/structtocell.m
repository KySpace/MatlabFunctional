% Extract the fields of the structure to a cell array.
% The field names will be lost.
function c = structtocell(s)
    arguments
        s       (1,1)   struct
    end
    fns = fieldnames(s);
    c = cell(size(fns));
    for i_f = 1 : numel(fns)
        fn = fns{i_f};
        c{i_f} = s.(fn);
    end
end