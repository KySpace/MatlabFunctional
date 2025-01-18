% Verify whether all structs in an array has the field name listed.
function mustHaveField(ss, fs)
arguments
    ss     (1,:)     struct
    fs     (1,:)     string
end
    for i_s = 1 : numel(ss) 
        s = ss(i_s);
        docontain = isfield(s, fs);
        if all(docontain); return;
        else 
            eid = 'RequiredField';
            msg = "Element " + num2str(i_s) + " missing fields:" ...
                + fold_a(@(s,ss) ss+"  "+s, "", fs(~docontain));
            throwAsCaller(MException(['InvalidArgument:' eid], msg));
        end
    end
end