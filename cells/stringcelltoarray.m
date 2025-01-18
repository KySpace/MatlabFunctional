% Convert string cell arrays to string arrays of the same size
function a = stringcelltoarray(c)
arguments (Input)
    c   % 1 × m | {string}  
end
arguments (Output)
    a   % 1 × m | [string]  
end
    a = convertCharsToStrings( ...
            cellfun(@char, c, UniformOutput=false) ...
        );
end