% apply a cell of functions with the same set of trailing arguments
function fxs = apply_c(fs, varargin)
arguments (Input)
    fs            % 1 × m | {varargin -> b} | A collection of function handles
end
arguments (Input, Repeating)
    varargin      % one set of input arguments
end
arguments (Output)
    fxs           % 1 × m | {b} | Only single argument output is supported
end
    fxs = cell(size(fs));
    for idx = 1 : numel(fs)
        f = fs{idx};
        fxs{idx} = f(varargin{:});
    end
end