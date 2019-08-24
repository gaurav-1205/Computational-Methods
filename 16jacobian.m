%jacobian
function f = jacobian(f, x, dx)
n = size(x, 1);
for j = 1:n
    xx = x;
    xx(j) = x(j) + dx;
    J(:, j) = (f(xx) - f(x))/dx
end