function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

hx = X * theta;
J = (sum((hx - y).^2))/(2 * m) + sum((theta(2:end,:)).^2) * lambda/(2*m);


 %j= 0

%X0 = X(:,1);
%theta0 = theta(1,:);
%hx0 = X0 * theta0;
%cost0 = (hx0 - y);
%grad0 = (cost0' * X0)/m
%grad0 = -10.218

%j =1

%Xrest = X(:, 2:end);
%thetarest = theta(2:end,:);
%hxrest = Xrest * thetarest;
%costrest = hxrest - y;
%gradrest = sum(costrest' * Xrest)/m + (theta * lambda )/m

hx = (X * theta );
hxone = (X * theta );
grad = (X' * (hx - y))./m + (lambda/m * theta);
grad_with_one = (X' * (hxone - y))./m;
grad(1) = grad_with_one(1);


% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%












% =========================================================================

grad = grad(:);

end
