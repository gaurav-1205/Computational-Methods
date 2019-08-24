function x = gaussPivot(A,b)

n = length(b);
s = zeros(n,1);
for i=1:n;
    s(i)= max(abs(A(i,1:n)));
end
for k = 1:n-1
    [Amax, p] = max(abs(A(k:n,k))./s(k:n);
    p = p + k - 1;
    if Amax < eps; error('Matrix is singular'); end
    if p ~= k
        b = swap(b,k,p);
        s = swap(s,k,p);
        A = swap(A,k,p);
    end
    for i = k+1:n
        if A(i,k) ~= 0
            lambda = A(i,k)/A(k,k);
            A(i,k+1:n) = A(i,k+1:n) - lambda * A(k,k+1:n);
            b(i) = b(i) - lambda * b(k);
        end
    end
end
for k = n:-1:1
    b(k) = (b(k) - A(k,k+1:n)*b(k+1:n))/A(k,k);
end
x = b;

