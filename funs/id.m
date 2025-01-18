% The identity function that supports varargin and varargout.
function varargout = id(varargin)
    varargout = cell(1, nargout);
    for idx = 1 : nargout
        varargout{idx} = varargin{idx};
    end
end