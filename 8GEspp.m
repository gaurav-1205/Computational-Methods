function gausselempivot(A)
%A = [3 -13 9 3 -19; -6 4 1 -18 -34; 6 -2 2 4 16; 12 -8 6 10 26]    
B = size(A);
m = B(1, 1);
n = B(1, 2);

l = [1:m];

C = A(:,1:m);
s = max(abs(C), [], 2);

l

for j=1:m-1
    p = zeros(1, n-j);
    for i = j:m
        p(1, i) = abs(A(l(i), j))/s(l(i));
    end
    
    
    
    [M, I] = max(p);
    
    temp = l(j);
    l(j) = l(I);
    l(I) = temp;
    
    l
    
    for i = j+1:m
        A(l(i), :) = A(l(i),:) - (A(l(i), j)/A(l(j), j))*A(l(j), :);
    end
    
end

A

%backward substitution
x = zeros(1, m);
t = zeros(1, m);

for r = m:-1:1
    t(r) = 0;
    if r==m
        t(r) = 0;
    else
        for p = r+1:m
            t(r) = t(r) + A(l(r), p) * x(p)/A(l(r), r);
        end
    end
     
    
    x(r) = A(l(r), n)/A(l(r), r) - t(r);
    
    
end
x
end

