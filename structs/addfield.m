% Add a field with field name and value
% or change the value if the field already exists.
% Same as `s.(fname) = val` but immutable.
function s = addfield(fname, val, s)
arguments
    fname (1,1)  string
    val          struct
    s     (1,1)  struct
end
    s.(fname) = val;
end