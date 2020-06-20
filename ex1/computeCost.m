function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

hypothesis_result = X * theta;
difference_in_result = hypothesis_result - y;
squared_difference_result = difference_in_result.^2;
resultsum = sum(squared_difference_result);

 

% You need to return the following variables correctly 
J = resultsum/(2*m);


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
