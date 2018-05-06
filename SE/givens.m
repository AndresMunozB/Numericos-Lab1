function [Q,R]=givens(A)
    [m,n]=size(A);
    Q=eye(m);
    R=A;
    for i=1:n
        for k=i+1:m
            if(R(k,i)~=0)
                raiz = sqrt(R(k,i)^2 + R(i,i)^2);
                S=-R(k,i)/raiz;
                C=R(i,i)/raiz;
                G=eye(m);
                G(i,i)=C;
                G(k,k)=C;
                G(k,i)=-S;
                G(i,k)=S;
                Q=Q*G;
                R=G'*R;
            end
        end
    end
end 