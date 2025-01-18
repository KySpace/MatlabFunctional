% flatten the entire cell
function jc = join_c(c)
    tempcell = c;
    while any(cellfun(@iscell,tempcell))
        tempcell = [tempcell{cellfun(@iscell,tempcell)} tempcell(~cellfun(@iscell,tempcell))];
    end
    jc = tempcell;
end