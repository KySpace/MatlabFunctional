% Access the deeper field like a lens getter
function val = lensgetdeep(fns, s)
arguments
    fns         string
    s
end
    val = s;
    for i_f = 1 : numel(fns)
        fn = fns(i_f);
        val = val.(fn);
    end
end