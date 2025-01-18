% Applies the filter to a cell array to reduce the cell array size.
% [Inputs]      filter   : The filter function handle.
%               c        : {c}. The input cell.
% [Outputs]     fc       : {c}. The output cell.
%               selected : [bool] the index for selected cells.
%        {c}, [bool]   <-    (c -> bool) , {c}   
function [fc, selected] = filter_c(filter, c)
arguments (Input)
    filter              %       | c -> bool | the filter function handle
    c           cell    % 1 × n | {c}       | the input cell
end
arguments (Output)
    fc                  % 1 × m | {c}       | the output cell
    selected            % 1 × m | [bool]    | the index for selected cells
end
    selected = cellfun(filter, c);
    fc = c(selected);
end