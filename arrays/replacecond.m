% replace elements that meets the condition with a transform
function B = replacecond(cond, transform, A)
arguments
    cond        {mustBeFunctionHandle}      % el -> bool
    transform   {mustBeFunctionHandle}      % el -> el
    A 
end
    mask = cond(A);
    B = A;
    B(mask) = transform(A(mask));
end