function [theta, J_history, theta_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
theta_history = theta';
J_history(1,1) = computeCost(X, y, theta);

for iter = 2:num_iters 
%here one iteration will be less since start from 2 
%because for J_history and theta_history can hold initaial values.

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    hypothesis_y_difference = (X * theta) - y;
    product_with_difference = X' * hypothesis_y_difference;
    theta_updation = product_with_difference * (alpha/m);
    theta = theta - theta_updation;
    
    theta_history(iter,:) = theta';
    



 


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter,1) = computeCost(X, y, theta);

end

end
