function[p] = testPredict()
% Test case for the prediction
% Results should be
% p = 0 0 1 1
X = [1 1 ; 1 2.5 ; 1 3 ; 1 4]
theta = [-3.5 ; 1.3]
p = predict(theta, X)

end