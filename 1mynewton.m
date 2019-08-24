function x = mynewton(f, f1, x0, tol, n)
x = x0;
    for i=1:n
        x = x - f(x)/f1(x)
    end 
r = abs(f(x))
if r>tol
    return
end 
end


