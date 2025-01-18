% apply all the functions in a function cell in sequence with
% the rest of the arguments as the function arguments.
% the output of functions in function cell are ignored.
function executeall(funcell, varargin)
    for idx = 1 : length(funcell)
        fun = funcell{idx};
        fun(varargin{:});
    end
end