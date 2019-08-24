lambda=1.2;
n=length(x0);
x=x0;
error=1;
iter = 0;
while (error>tol & iter<maxiter)
    xold=x;
    for i=1:n
        I = [1:i-1 i+1:n];
        x(i) = (1-lambda)*x(i)+lambda/A(i,i)*( b(i)-A(i,I)*x(I) );
    end
    error = norm(x-xold)/norm(x);
    iter = iter+1;
end

x_SOR=x
