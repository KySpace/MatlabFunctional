function getter = lensgetterdeep(fns)
    getter = @(s) lensgetdeep(fns, s);
end