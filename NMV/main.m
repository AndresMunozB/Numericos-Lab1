%TOLERANCIA
toleranciaNMV = 10^-10;

%ITERACIONES
iteraciones = 100;

%VALORES INICIALES
xInicialNMVF = 0;
yInicialNMVF = 0;

%METODO NEWTON MULTIVARIABLE (2 variables)
%FUNCIONES Y SUS DERIVADAS
f1 = 'x^2-10*x+y^2+8';
f2 = 'x*y^2+x-10*y+8';
df1x = '2*x-10+0*y';
df1y = '2*y+0*x';
df2x = 'y^2+1+0*x';
df2y = '2*x*y-10';
 


[matrix,errF1,errF2,iNMV2,tNMV2] = newtonMultivariableDos(xInicialNMVF,yInicialNMVF,iteraciones,f1,f2,df1x,df1y,df2x,df2y,toleranciaNMV);
graficoNMV2('Sistema 1',matrix);
graficoErrorNMV2('Sistema 1',errF1,errF2);


%EXPORTACION DE DATOS EN .mat
save('data/newtonMV2.mat','matrix','errF1','errF2');

% %METODOS NEWTON MULTIVARIABLE (3 VARIABLES)
% %FUNCIONES Y SUS DERIVADAS
% g1 = 'x^2+y+0*z-37';
% g2 = 'x-y^2++0*z-5';
% g3 = 'x+y+z-3';
% dg1x = '2*x+0*y+0*z';
% dg1y = '1+0*x+0*y+0*z';
% dg1z = '0+0*x+0*y+0*z';
% dg2x = '1+0*x+0*y+0*z';
% dg2y = '-2*y+0*x+0*z';
% dg2z = '0+0*x+0*y+0*z';
% dg3x = '1+0*x+0*y+0*z';
% dg3y = '1+0*x+0*y+0*z';
% dg3z = '1+0*x+0*y+0*z';
% 
% %VALORES INICIALES
% xInicialNMVG = 0;
% yInicialNMVG = 0;
% zInicialNMVG = 0;
% 
% [matriz,errG1,errG2,errG3,iNMV3,tNMV3] = newtonMultivariableTres(xInicialNMVG,yInicialNMVG,zInicialNMVG,iteraciones,g1,g2,g3,dg1x,dg1y,dg1z,dg2x,dg2y,dg2z,dg3x,dg3y,dg3z,toleranciaNMV);
% graficoNMV3('Sistema 2',matriz);
% graficoErrorNMV3('Sistema 2',errG1,errG2,errG3);
% 
% %EXPORTACION DE DATOS EN .mat
% save('data/newtonMV3.mat','matriz','errG1','errG2','errG3');