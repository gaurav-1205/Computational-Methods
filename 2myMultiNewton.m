function x=myMultiNewton(f,x,N)
[y,dy]=f(x);
for i=1:N
    s=dy\y';
    x=x-s';
    [y,dy]=f(x);
end
end