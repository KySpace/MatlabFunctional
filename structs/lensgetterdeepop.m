function getter = lensgetterdeepop(fns, defaultval)
    getter = @(s) lensgetdeepop(fns, defaultval, s);
end