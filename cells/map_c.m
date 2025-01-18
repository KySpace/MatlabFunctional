% Applies the function to a cell array
function fc = map_c(fun, c)
arguments (Input)
    fun       %       | a -> b | The function handle
    c         % 1 × m | {a}    | The input cell
end
arguments (Output)
    fc        % 1 × m | {b}    | The output cell
end
    fc = cell(size(c));
    for k = 1 : numel(c)
        fc{k} = fun(c{k});
    end
end