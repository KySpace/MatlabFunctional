function getter = lensgetter(fname, dflt)
    getter = @(s) lensget(fname, dflt, s);
end