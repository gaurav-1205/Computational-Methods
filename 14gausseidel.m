A=[5 -2 3 0;-3 9 1 -2;2 -1 -7 1; 4 3 -5 7]
b=[-1 2 3 0.5]'
x = [0 0 0 0]'
[n m]=size(x);
normVal=10e10; 
tol=1e-5; itr=0;



while normVal>tol
    xold=x;
    
    for i=1:n
        
        sum=0;
        
        for j=1:i-1
                sum=sum+A(i,j)*x(j);
        end
        
        for j=i+1:n
                sum=sum+A(i,j)*xold(j);
        end
        
        x(i)=(1/A(i,i))*(b(i)-sum);
    end
    
    itr=itr+1;
    normVal=norm(xold-x);
end
x
itr