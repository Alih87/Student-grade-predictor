y = G3;
x = [G1 G2];
mu = mean(x);
sigma = std(x);
X_norm = (x - mu)./sigma;
x = X_norm;
x = [ones(length(y),1) x];
theta = zeros(size(x,2),1);
alpha = 0.001;
iterations = 5000;
cost(x,y,theta);
[theta, J_new] = Gradient(x,y,theta,alpha,iterations);
plot(1:iterations,J_new);
temp = [1 0 20];
temp(1,2) = (temp(1,2) - mu(1,1))/sigma(1,1);
temp(1,3) = (temp(1,3) - mu(1,2))/sigma(1,2);
fgrade = temp*theta;