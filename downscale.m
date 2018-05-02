function [out] = downscale(matrix,xf,yf,keepsum)
% [new_matrix] = downscale(matrix,xf,yf,keepsum)
%  Rescale matrix down with potentially different factors for x and y dimension.
%  The average in the respective cells is calculated as the new matrix cell value.
%  Opposite of upscale. Much faster than resizem.
% ------------------------------------------------------------------------
% VARIABLE INPUTS
%    - matrix The matrix to be rescaled
%    - xf Factor by which x-dimension is scaled.
%    - yf Factor by which y-dimension is scaled.
%    - keepsum Either 0 or 1. When 1, the matrix values will be scaled such
%              that the sum stays the same (e.g. if the values are population
%              and a coarser resolution is wanted but the total population
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
%  e = downscale(d,2,3,1)
%  f = downscale(d,2,3,0)
%
% ========================================================================
%                    Background Information
% ------------------------------------------------------------------------
%  Function to downscale matrix.
%
%   Stephanie Lackner                   Version 0.1
%   https://github.com/slackner0/matlab_scale.git            May 2, 2018
% ========================================================================

out=kron(eye(size(matrix,1)/yf),ones(1,yf))*matrix*kron(eye(size(matrix,2)/xf),ones(xf,1));

if keepsum==0
   out=out./(xf*yf);
end


end
