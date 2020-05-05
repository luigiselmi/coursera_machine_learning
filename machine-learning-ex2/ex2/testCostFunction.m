function [J, grad] = testCostFunction()
% Test case for the cost function 
% Results should be 
% j =  22.000
% g = -0.25000 -5.25000 1.25000 1.50000 -6.00000
%
X = [ones(4,1) magic(4)];
y = [1 0 1 0]';
theta = [-1 2 -3 4 -5]';
[J, grad] = costFunction(theta, X, y);

end