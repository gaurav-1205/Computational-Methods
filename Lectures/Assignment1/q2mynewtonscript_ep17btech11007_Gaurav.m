f = @(x)x^3 - 3.23*x^2 - 5.54*x + 9.84
f1 = @(x)3*x^2 - 6.46*x^2 - 5.54
q2mynewton_ep17btech11007_Gaurav(f, f1, 1, eps, 50)
f(ans)