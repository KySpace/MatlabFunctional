% Pipe together an cell array of functions, 
% where the first argument of the next function is the return of the last function,
% and the trailing arguments of every function are the same.
function piped = pipe(fs)
arguments (Input)
    fs       (1,:)      % 1 × m | {(a_i, args -> a_j)}  
end
arguments (Output)
    piped    (1,:)      % 1 × m | (a_0, args -> a_n)
end
    piped = @(varargin) pipeall(fs, varargin{:});
end

function x = pipeall(fs, x, varargin)
    for i = 1 : numel(fs)
        f = fs{i};
        x = f(x, varargin{:});
    end
end 