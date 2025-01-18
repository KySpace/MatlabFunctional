% "fold" for an array with given folder function and an initial value.          
function fa = fold_a(folder, init, arr)
arguments (Input)
    folder  %       | a, b -> b | The function handle that accumulates on `val` with the new element of 
    init    %       | b         | The intial value
    arr     % 1 × m | [a]       | The input array
end
arguments (Output)
    fa      % 1 × m | [b]       | The output array
end
    fa = init;
    for idx = 1 : length(arr(:))
        fa = folder(arr(idx), fa);
    end
end