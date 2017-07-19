function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

h_theta = X * theta;

for i = 1:m,
  J = J + (h_theta(i) - y(i))^2 ;
end;

  J = J/(2*m);
  

for i =1:m,
  grad(1) = grad(1) + (h_theta(i) - y(i));
end;
  grad(1)= grad(1)/m;
for j=2:n_plus_one,
  for i =1:m,
    grad(j) = grad(j) +(h_theta(i) - y(i))*X(i+m*(j-1));
  end;
  grad(j) = grad(j)/m;
end;




% =========================================================================

end
