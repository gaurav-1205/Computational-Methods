function t = tr_EP17BTECH11007_Gaurav(A)
[m n] = size(A);
if m == n
    sum = 0;
    for i = 1:n
        sum = sum + A(i, i);
    end
    sum
else
    error('please enter a square matrix')
end
