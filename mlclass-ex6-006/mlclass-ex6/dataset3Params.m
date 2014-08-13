function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = .01;
sigma = 0.01;

%all_possible_c = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%all_possible_sigma = [0.01, 0.03, 0.1, 0.3, 1, 3, 10, 30];
%x1 = [1 2 1]; x2 = [0 4 -1];
%output = zeros(64,3);
%i = 1;

%for possible_C = all_possible_c,
  %for possible_sigma = all_possible_sigma,
    %output(i,1) = possible_C;
    %output(i,2) = possible_sigma;
    %i = i+1;
    %model= svmTrain(Xval, yval, possible_C, @(x1, x2) gaussianKernel(x1, x2, possible_sigma));
    %predictions = svmPredict(model, Xval);
    %output(i,3) = mean(double(predictions ~= yval));
  %end
%end




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







% =========================================================================

end
