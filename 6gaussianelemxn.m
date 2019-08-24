function gaussianelemxn(A)

B = size(A)

m = B(1, 1);
n = B(1, 2);

if n~=m+1 
    disp('It does not have a unique solution')
    exit()
end

temp = [1:n];
for i=1:m
    if A(i, i) == 0
        temp = A(i, :);
        A(i, :) = A(i+1, :);
        A(i+1, :) = temp;
    end
end

A;
        
        
        
p = n-1;
for j=2:p
    for i = j:m
        A(i, :) = A(i,:) - (A(i, j-1)/A(j-1, j-1))*A(j-1, :);
    end
end


A

x = [1:m];
s = [1:m];

for r = m:-1:1
    s(r) = 0;
    if r==m
        s(r) = 0;
    else
        for p = r+1:m
            s(r) = s(r) + A(r, p) * x(p)/A(r, r);
        end
    end
     
    
    x(r) = A(r, n)/A(r, r) - s(r);
    
end
x

    