n = 6
a = ones(n-1, 1);
b = 4*ones(n, 1);
c = -ones(n-1,1);
diag(a, -n);
T = diag(a, -1)+diag(b)+diag(c, 1)

myLU_EP17BTECH11007_Gaurav(T);