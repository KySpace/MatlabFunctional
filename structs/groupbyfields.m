% Group the struct array by field names. 
% This gauruntees that the input an output array have the same field names.
function [gs, f] = groupbyfields(fnames, s)
arguments (Input)
    fnames    (1,:)     string  % [string]          | an array of field names.
    s                   struct  % [a] : a is struct | the input array. 
                                %                   | Each element should contain the fields listed in fnames.
end   
arguments (Output)
    gs                          % {[struct]}        | the output array of partitions of `s`.
                                %                   | Each partition should have elements that will yield 
                                %                   | identically for each field name.
    f                           % [struct]          | an array of structs that contains the values
                                %                   | of the fields in fnames of each group
end
   tokens = map_c(@(n) lensgetter(n, []), num2cell(fnames));
   [gc, val] = groupby_c(tokens, num2cell(s));
   gs = map_c(@cell2mat, gc);
   f = cell2mat(map_c(@(v) cell2struct(v, fnames, 2), val));
end