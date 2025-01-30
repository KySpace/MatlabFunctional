% Map every input to an output seqentially with the same map function
function varargout = mapvararg(map, varargin)
    for v = 1 : (nargin - 1)
         varargout{v} = map(varargin{v});
    end
end