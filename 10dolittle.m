%A = [3 -13 9 3; -6 4 1 -18; 6 -2 2 4; 12 -8 6 10]
%b = [-19; -34; 16; 26]
function dolittle(A, b)
[m,n]=size(A);

U=zeros(m);
L=zeros(m);
for j=1:m
    L(j,j)=1;
end
for j=1:m
    U(1,j)=A(1,j);
end
for i=2:m
    for j=1:m
        for k=1:i-1
            s1=0;
            if k==1
                s1=0;
            else
            for p=1:k-1
                s1=s1+L(i,p)*U(p,k);
            end
            end
            L(i,k)=(A(i,k)-s1)/U(k,k);
           end
         for k=i:m
             s2=0;
           for p=1:i-1
               s2=s2+L(i,p)*U(p,k);
           end
           U(i,k)=A(i,k)-s2;
         end
    end
end

L
U




y = L\b;
x = U\y


accuracy = norm(A*x-b)