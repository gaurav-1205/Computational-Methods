function x = q1bisection_ep17btech11007_Gaurav(f, a, b)
dif = b-a;
tol = abs(dif);
min = 10^(-8);
n = (log(tol/min)/log(2))
if f(a)*f(b)<0
    for i=1:n
        x = (a+b)/2;
        if f(x)==0
            root = x
        else
            if f(x)*f(a)<0
                b = x;
            else 
                a = x;
        end
        end
    end
else
    display('Enter correct intervals')
end
        