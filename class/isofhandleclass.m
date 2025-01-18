% To tell if an object is a function handle.
function b = isofhandleclass(h)
    super = metaclass(h).SuperclassList;
    b = false;
    for i = 1 : numel(super)
        s = super(i);
        if isequal(s.Name, "handle"); b = true; return; end
    end
end