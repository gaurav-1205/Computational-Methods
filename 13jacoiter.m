A=[5 -2 3 0;-3 9 1 -2;2 -1 -7 1; 4 3 -5 7]
b=[-1 2 3 0.5]'
x = [0 0 0 0]'
[n m]=size(x);
normVal=10e10; 
tol=1e-5; itr=0;



while normVal>tol
    xold=x;
    
    for i=1:n
        sigma=0;
        
        for j=1:n
            
            if j~=i
                sigma=sigma+A(i,j)*x(j);
            end
            
        end
        
        x(i)=(1/A(i,i))*(b(i)-sigma);
    end
    
    itr=itr+1;
    normVal=abs(xold-x);
    
    
end
x
itr