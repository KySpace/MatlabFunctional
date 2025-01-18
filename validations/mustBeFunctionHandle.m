% Verify that the object is a function handle
function mustBeFunctionHandle(f)
arguments
    f
end
    if isequal(f, []); return; end
    if ~isa(f, "function_handle")
        eid = 'NotFunctionHandle';
        msg = 'Expected function handle';
        throwAsCaller(MException(['InvalidArgument:' eid], msg));
    end
end