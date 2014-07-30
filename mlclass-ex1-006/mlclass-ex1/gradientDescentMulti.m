function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    hxa = theta' .* X;
    sum_hx = zeros(rows(hxa),1);

    for iter = 1:columns(hxa);
      sum_hx(:,1) = sum_hx(:,1) + hxa(:,iter);
    end

    %keyboard("debugging")

    for iter = 1:columns(hxa)
      printf("setting theta to %d",iter);
      theta(iter) = theta(iter) - (alpha/m) * (sum((sum_hx - y).*X(:,iter)));
    end
    %keyboard("debugging");

    %theta_first = theta(1) - (alpha/m) * (sum((hx - y).*X(:,1)));
    %theta_second = theta(2) - (alpha/m) * (sum((hx - y).*X(:,2)));

    %theta(1) = theta_first
    %theta(2) = theta_second


    printf("Theta is %f X %f", theta(1), theta(2));

    %keyboard("debugging")


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
end

end
