% Fold the cell using the folder function to value
function val = fold_c(folder, init, c)
arguments (Input)
    folder  %       | a, b -> b | The function handle that accumulates on `val` with the new element of `c`
    init    %       | b         | The intial value
    c       % 1 × m | {a}       | The input cell
end
arguments (Output)
    val     % 1 × m | {b}       | The output value
end
    val = init;
    for idx = 1 : length(c(:))
        val = folder(c{idx}, val);
    end
end