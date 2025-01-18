% Verify that every cell in the cell array contains a function handle.
function mustBeFunctionHandleCell(f)
arguments
    f       cell
end
    isfun = map_c(@(f) isa(f, "function_handle"), f);
    if ~all(cell2mat(isfun))
        eid = 'NotFunctionHandleCell';
        msg = 'Expected function handle cell';
        throwAsCaller(MException(['InvalidArgument:' eid], msg));
    end
end