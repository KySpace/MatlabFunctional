% Same as `ifthel`, but avoids evaluating the argument.
function val = tern(cond, a, b)
    if cond; val = a; else; val = b;
end