function [ new ] = resizem_by_max(matrix,n)
% [new_matrix ] = resizem_by_max(matrix,n)
%  Resizing matrix with method maximum. New matrix has original dimensions times n.
% EXAMPLE
%  A=[1 2 3 4
%     1 1 1 1
%     2 3 4 1
%     0 1 2 3];
%  resizem_by_max(A,2)
%  resizem(A,1/2)
%  resizem_by_max(A,1/2)
%
% ========================================================================
%                    Background Information
% ------------------------------------------------------------------------
%  Function to resize matrix with method maximum.
%
%   Stephanie Lackner                   Version 0.1
%   https://github.com/slackner0/matlab_scale.git            May 2, 2018
% ========================================================================


[r1,c1]=size(matrix);
r2=round(r1*n);
c2=round(c1*n);
new=zeros(r2,c2);


for i=1:r2
    for j=1:c2        
        lap=matrix(floor((i-1)*r1/r2)+1:ceil(i*r1/r2),floor((j-1)*c1/c2)+1:ceil(j*c1/c2));
        new(i,j)=max(max(lap));
    end
end

end

