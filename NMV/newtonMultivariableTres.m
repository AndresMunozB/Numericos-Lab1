function [matrix, errF1,errF2,errF3] = newtonMultivariableTres(xOld,yOld,zOld,iteracion,f1,f2,f3,df1x,df1y,df1z,df2x,df2y,df2z,df3x,df3y,df3z,tolerancia)
f1 = inline(f1);
f2 = inline(f2);
f3 = inline(f3);
df1x = inline(df1x);
df1y = inline(df1y);
df1z = inline(df1z);
df2x = inline(df2x);
df2y = inline(df2y);
df2z = inline(df2z);
df3x = inline(df3x);
df3y = inline(df3y);
df3z = inline(df3z);
it = 1;
errorf1 = abs(f1(xOld,yOld,zOld));
errorf2 = abs(f2(xOld,yOld,zOld));
errorf3 = abs(f3(xOld,yOld,zOld));
matrix = [];
errF1 = [];
errF2 = [];
errF3 = [];
while (errorf1 > tolerancia || errorf2 > tolerancia || errorf3 > tolerancia) && it <= iteracion
    matriz = [df1x(xOld,yOld,zOld) df1y(xOld,yOld,zOld) df1z(xOld,yOld,zOld); df2x(xOld,yOld,zOld) df2y(xOld,yOld,zOld) df2z(xOld,yOld,zOld); df3x(xOld,yOld,zOld) df3y(xOld,yOld,zOld) df3z(xOld,yOld,zOld)];
    J = inv(matriz);    
    matrizNueva = [xOld; yOld; zOld] - (J*[f1(xOld,yOld,zOld); f2(xOld,yOld,zOld); f3(xOld,yOld,zOld)]);
    matrix = [matrix matrizNueva];
    xOld = matrizNueva(1,1);
    yOld = matrizNueva(2,1);
    zOld = matrizNueva(3,1);
    errorf1 = abs(f1(xOld,yOld,zOld));
    errorf2 = abs(f2(xOld,yOld,zOld));
    errorf3 = abs(f3(xOld,yOld,zOld));
    errF1 = [errF1 errorf1];
    errF2 = [errF2 errorf2];
    errF3 = [errF3 errorf3];
    it = it+1;
end
end