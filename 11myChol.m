function L=myChol(A, b)
    n=size(A,1);
for j=1:n
    tempvar = A(j,j) - dot(A(j,1:j-1),A(j,1:j-1));
    if (tempvar < 0.0)
        error('Matrix is not positive de nite');
    end
    A(j,j) = sqrt(tempvar);
    for i=j+1:n
    A(i,j)=(A(i,j) - dot(A(i,1:j-1),A(j,1:j-1)))/A(j,j);
    end
end
L = tril(A)
U = triu(A)

y = L\b;
x = U\y


accuracy = norm(A*x-b)