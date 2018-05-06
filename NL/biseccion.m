function [errores, valores,tiempo,iteraciones] = biseccion(funcion,a,b,tolerancia,it_max)
funcion=inline(funcion);
errores = [];
valores = [];
tic;
if b > a     
    it = 1;
    tic;
    d = (b-a)/2;
    while d > tolerancia && it < it_max
        errores = [errores d];
        d = (b-a)/2;
        m = a+d;
        valores = [valores m];
        if funcion(m) == 0
            a = m;
            b = m;
        else if sign(funcion(a)) == sign(funcion(m))
                a = m;
            else if sign(funcion(b)) == sign(funcion(m))
                    b = m;
                end
            end
        end
        it = it + 1;
    end
    tiempo = toc;
    iteraciones = it;
else
    disp('ERROR: No existe raíz en ese intervalo')
end 
tiempo = toc;
iteraciones = it;
end