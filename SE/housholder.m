function [raiz] = housholder(A, b)
    [m , n] = size(A);
    raiz = [A b];
    if (m<=n)
        n1 = m-1;
    else
        n1 = n;
    end
    for i=1:n1
        v = raiz(i:m,i);
        nor = norm(v);
        if (nor > 10*eps)
            signo = sign(v(1));
            if (abs(v(1)) < 10*eps)
                signo = 1;
            end
            v(1) = v(1) + signo*nor;
            raiz(i:m,i:n+1) = raiz(i:m,i:n+1)-(2/(v'*v)*v)*(v'*raiz(i:m,i:n+1));
        end
    end
end