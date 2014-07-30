function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 

[J,grad] = costFunction(theta, X, y);

theta_without_one = theta;

theta_without_one(1,1) = 0;

J = J + (lambda/(2 * m)) *sum(theta_without_one .^2);
%J += (lambda * sum((theta_without_one .^ 2))) / (2 * m);


% ------------New Approach
hx = sigmoid(X * theta );
hxone = sigmoid(X * theta );
grad = (X' * (hx - y))./m + (lambda/m * theta);
grad_with_one = (X' * (hxone - y))./m;
grad(1) = grad_with_one(1);





% =============================================================

end
