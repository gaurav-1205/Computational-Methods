function x = mysecant(f, x0, x1, n)
    y0 = f(x0)
    y1 = f(x1)
for i = 1:n
    x = x1 - (x1 - x0)*y1/(y1 - y0)
    y = f(x);
    x0 = x1;
    y0 = y1;
    x1 = x;
    y1 = y;
end
end

    