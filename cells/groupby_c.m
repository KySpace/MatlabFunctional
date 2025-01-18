%  Group the elements of the cell arrays by multiple tokens.
function [gc, val] = groupby_c(tokens, c)
arguments (Input)
    tokens      cell        % {a -> b'} | The token function, `b'` can vary from cell to cell
    c           cell        % {a}
end
arguments (Output)
    gc          cell        % {{a}}     | Grouped cells. The output cell array of partitions of `c`.
                            %             Each partition should have elements that will yield 
                            %             identically for each token in `tokens`.
    val         cell        % {{b'}}    | The commmon tokens of each group.
end
    function match = alltokensmatch(a, b)
        matchfolder = @(t, m) m & isequal(t(a), t(b));
        match = fold_c(matchfolder, true, tokens);
    end
    rest = c;
    gc = {}; val = {};
    while ~isempty(rest)
        this = rest{1};
        matchthis = @(a) alltokensmatch(a, this);
        matched = cell2mat(map_c(matchthis, rest));
        gc{end+1} = rest(matched);
        val{end+1} = map_c(@(t) t(this), tokens);
        rest = rest(~matched);
    end
end

