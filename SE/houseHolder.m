function [raiz,error,contadorHou,time] = houseHolder(A,b)
    tic;
    contadorHou = 0;
    [m,n] = size(A);
    Q = eye(m);      
    R = A;
    %Transformormacion QR
    for j = 1:n 
        normx = norm(R(j:end,j));
        s     = -sign(R(j,j));
        u1    = R(j,j) - s*normx;
        w     = R(j:end,j)/u1;
        w(1)  = 1;
        tau   = -s*u1/normx;
        %Reemplazando
        R(j:end,:) = R(j:end,:)-(tau*w)*(w'*R(j:end,:));
        Q(:,j:end) = Q(:,j:end)-(Q(:,j:end)*w)*(tau*w)';
        contadorHou = contadorHou + 11;
    end
    %Obtener resultado
    z = inv(Q)*b;
    raiz = inv(R)*z; 
    error = norm(eye(m)-inv(Q*R)*A);
    contadorHou = contadorHou + 5;
    time = toc;

end