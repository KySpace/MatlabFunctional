fprintf("loading: MatlabFunctional \n");
mf_rootpath = fileparts(mfilename("fullpath"));
mf_srcfolders = ["arrays", "cells", "flow", "funs", "grids", "structs", "class", "validations"];
for i = 1 : numel(mf_srcfolders)
    addpath(genpath(mf_rootpath+"/"+mf_srcfolders(i)));
end

clear mf_rootpath mf_srcfolders