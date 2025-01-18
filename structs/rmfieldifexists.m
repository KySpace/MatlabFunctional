% Return a structure without an existing field.
function s_o = rmfieldifexists(fns, s)
arguments
    fns         cell
    s           struct
end
    fns = filter_c(@(fn) isfield(s, fn), fns);
    s_o = rmfield(s, stringcelltoarray(fns));
end