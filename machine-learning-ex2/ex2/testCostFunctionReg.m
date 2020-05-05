function [J, grad] = testCostFunctionReg()
% Test case for the cost function with regularization
% Results should be 
% J = 7.6832
% grad = 0.31722 -0.12768 2.64812 4.23787
%
X = [ones(3,1) magic(3)];
y = [1 0 1]';
theta = [-2 -1 1 2]';
lambda = 3;
[J grad] = costFunctionReg(theta, X, y, lambda);

end