function [J, grad] = testNNCostFunction()

input_layer_size  = 400;  % 20x20 Input Images of Digits
hidden_layer_size = 25;   % 25 hidden units
num_labels = 10;          % 10 labels, from 1 to 10   

% Load Training Data
load('ex4data1.mat');

% Load the weights into variables Theta1 and Theta2
load('ex4weights.mat');
nn_params = [Theta1(:) ; Theta2(:)];

lambda = 0;

[J grad] = nnCostFunction(nn_params, input_layer_size, hidden_layer_size, num_labels, X, y, lambda);
fprintf(['J : %f (this value should be about 0.287629)\n'], J);

checkNNGradients

end 