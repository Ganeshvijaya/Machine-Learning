function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
result_by_hypothesis = X * theta;
difference_in_reult = result_by_hypothesis - y;
squared_difference = difference_in_reult.^2;
sum_of_squared_difference = sum(squared_difference);

J = sum_of_squared_difference/ (2*m);



% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
