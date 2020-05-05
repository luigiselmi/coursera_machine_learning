function [J, grad] = testCofiCostFunc()
% The cofiCostFunc is used by the fmincg function that sends
% the parameters X (movie features vector) and Theta (user parameters vector)
% as unrolled values [X(:); Theta(:)]. The parameters are used to define a linear
% hyphotesis that is minimized using the cost function. The cofiCostFunc must reshape 
% the data to get the original X and Theta. Let´s say we have 3 users, 4 movies
% and 2 features for the movies (e.g.: romance/action). Then
% size(X) = 4 x 2, size(Theta) = 3 x 2. The unrolled param vector will contain 8 + 6 = 14 values.  
% The cost function needs also the ratings Y to compare with the predictions X*Theta' 
% and the R matrix to know which movie has been rated by each user,
% size(Y) = size(R) = 4 x 3 
% Using the paramets vector, Y and R, the result for the cost function should be 
% J =  311.63 without regularization (lambda = 0) and J = 342.08 with regularization (lambda = 6).
params = [ 1:14 ] / 10;
Y = magic(4);
Y = Y(:,1:3);
R = [1 0 1; 1 1 1; 0 0 1; 1 1 0] > 0.5;     % R is logical
num_users = 3;
num_movies = 4;
num_features = 2;
lambda = 6;
[J grad] = cofiCostFunc(params, Y, R, num_users, num_movies, num_features, lambda);

end 