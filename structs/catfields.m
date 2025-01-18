function s = catfields(s1, s2)
arguments (Input)
    s1  struct  % 1 × m
    s2  struct  % 1 × n
end
arguments (Output)
    s   struct  % 1 × m
end
    fns = fieldnames(s1);
    for idx = 1 : numel(fns)
        fn = fns{idx};
        s.(fn) = [s1.(fn) s2.(fn)];
    end
end