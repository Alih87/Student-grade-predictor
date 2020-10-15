function [theta,J_new] = Gradient(x,y,theta,alpha,iterations)
J_new = zeros(iterations,1);
m = length(y);
for iter = 1:iterations
    error = (x*theta)-y;
    x_new = error'*x;
    theta = theta - ((alpha/m) * x_new');
    J_new(iter) = cost(x,y,theta);
end
end