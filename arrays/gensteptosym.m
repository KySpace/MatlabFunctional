% similar to `linspace`, but symmetric.
function [arr, idx_cent] = gensteptosym(step, m, cent)
arguments
    step     (1,1)   % step
    m        (1,1)   % upper bound value
    cent     (1,1)   % the center
end
    arr_pos = 0:step:m;
    arr_neg = sort(-arr_pos);
    arr = unique([arr_neg arr_pos]);
    idx_cent = numel(arr_neg);
    assert(idx_cent ~= 0, "Did not generate symmetric points as expected.");
    arr = arr + cent;
end