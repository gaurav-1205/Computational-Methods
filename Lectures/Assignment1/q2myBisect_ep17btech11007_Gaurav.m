f = @(x)x^3 - 3.23*x^2 - 5.54*x + 9.84
a = 0;
for i=0: 10^(-3): 50
    if f(0)*f(i)<0
        b = i;
        break
    end
end
q2bisection_ep17btech11007_Gaurav(f, a, b)
f(ans)
