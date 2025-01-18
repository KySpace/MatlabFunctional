% To initialize the cell array with size `sz` and
function idc = init_c(sz, sample)
arguments
    sz          % size of the cell array
    sample      % the sample.
end
    idc = cell(sz);
    idc(:) = {sample};
end