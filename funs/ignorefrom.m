% Generate a funciton that ignore the last several arguments.
function fun_o = ignorefrom(from, fun)
arguments (Input)
    from    (1,1) % integer
    fun     (1,1) % a, b, c, d ... -> e, f, g, h ...
end
arguments (Output)
    fun_o   (1,1) % a, b       ... -> e, f, g, h ...
end
    fun_o = @(varargin) fun(varargin{1:from});
end