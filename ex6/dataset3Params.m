function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = [0.3; 1.0; 3.0] ; % 6 terms
sigma = [ 0.01; 0.03; 0.1; 0.3;] ; % 8 terms

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%

combination_C = zeros(size(C,1),size(sigma,1));
combination_sigma = zeros(size(C,1),size(sigma,1));
error = zeros(size(C,1),size(sigma,1)); 



for i = 1:size(C,1)
  
  for j = 1:size(sigma,1)
    
    model = svmTrain(X, y, C(i,1), @(x1, x2) gaussianKernel(x1, x2, sigma(j,1)));
    %t = t+1;
    combination_C(i,j) = C(i,1);   
    combination_sigma(i,j) = sigma(j,1);
    
    predictions = svmPredict(model, Xval);
    error(i,j) = mean(double(predictions ~= yval));
    
    
  endfor
endfor
error
min_error = min(min(error)); 
[p1,p2] = find(error == min_error);
p1
p2

C = combination_C(p1,p2);
sigma = combination_sigma(p1,p2);

% =========================================================================

end
