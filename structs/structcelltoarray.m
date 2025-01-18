% Turn a cell array of structures to an array of structure.
% Only works if every cell has the structure with the same fields.
function a = structcelltoarray(c)
arguments
    c   {mustBeStructCell}
end
    a = [];
    for i_c = 1 : numel(c)
        a(i_c) = c{i_c};
    end
end