% Verify that the argument is a cell array of structs.
function mustBeStructCell(ss)
arguments
    ss    
end
    if ~iscell(ss)
        eid = 'ExpectedStructCell';
        msg = "Expected a cell of structs";
        throwAsCaller(MException(['InvalidArgument:' eid], msg));
    else
        for i_s = 1 : numel(ss)
            s = ss{i_s};
            if ~isstruct(s)
                eid = 'ExpectedStructCell';
                msg = sprintf("The %i th argument is not a struct.", i_s);
                throwAsCaller(MException(['InvalidArgument:' eid], msg));
            end
        end
    end
end