function [output] = lcm_multi(sample)
% [lcm] = lcm_multi(sample)
%  Calculate least common multiple from vector of numbers.
%  lcm() only allows two numbers, therefore lcm_multi().
% ------------------------------------------------------------------------
% VARIABLE INPUTS
%    - sample Vector of integers
% ------------------------------------------------------------------------
% OUTPUT
%    - lcm The least common multiple of the integers in sample
% ------------------------------------------------------------------------
% EXAMPLE
%  lcm_mltiple([3 5 7])
%
% ========================================================================
%                    Background Information
% ------------------------------------------------------------------------
%  Function to calculate least common multiple from vector of numbers.
%
%   Stephanie Lackner                   Version 0.1
%   https://github.com/slackner0/matlab_scale.git            May 2, 2018
% ========================================================================

output=sample(1);
for i=2:length(sample)
    output=lcm(output,sample(i));
end

end

