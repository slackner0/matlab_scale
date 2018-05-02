function [out] = upscale(matrix,xf,yf,keepsum)
% [new_matrix] = upscale(matrix,xf,yf,keepsum)
%  Rescale matrix up with potentially different factors for x and y dimension.
%  Opposite of downscale. Much faster than resizem.
% ------------------------------------------------------------------------
% VARIABLE INPUTS
%    - matrix The matrix to be rescaled
%    - xf Factor by which x-dimension is scaled.
%    - yf Factor by which y-dimension is scaled.
%    - keepsum Either 0 or 1. When 1, the matrix values will be scaled such
%              that the sum stays the same (e.g. if the values are population
%              and a finer resolution is wanted but the total population
%              should stay the same)
% ------------------------------------------------------------------------
% OUTPUT
%    - new_matrix
% ------------------------------------------------------------------------
% EXAMPLES
%  a = [1 2; 3 4]
%  b = upscale(a,2,3,0)
%  c = downscale(b,2,3,0)
%  d = upscale(a,2,3,1)
%
% ========================================================================
%                    Background Information
% ------------------------------------------------------------------------
%  Function to upscale matrix.
%
%   Stephanie Lackner                   Version 0.1
%   https://github.com/slackner0/matlab_scale.git            May 2, 2018
% ========================================================================

out=kron(eye(size(matrix,1)),ones(yf,1))*matrix*kron(eye(size(matrix,2)),ones(1,xf));

if keepsum==1
    out=out./(xf*yf);
end



end
