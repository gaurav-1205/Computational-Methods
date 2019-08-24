function x = regulafalsi(f,a,b,iter, tolerance)
    count = 0;
    xold = b;
    while(count<iter)
        x0 = f(a);
        x1 = f(b);
        x = a - ((f(a)*(b-a))/ (f(b) - f(a)));
        if (abs(x - xold)/abs(x)) < tolerance
            return
        end
        xold = x; 
        if (f(a)*f(x) > 0)
            a = x;
        else 
            b = x;
        end
       
    end
    
end
    
            
    
    
    
    
    
   