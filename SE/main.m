
% Se cargan los datos para el primer sistema
A1 = load('289x289/A289.dat');
b1 = load('289x289/b289.dat');

%u = linsolve(A1,b1);

xInicial1=zeros(1,289);
disp('Primer sistema');
[raizGS1,itGS1,timeGS1] = GaussSeidel(A1,b1',xInicial1,1000);

[raizGJ1,itGJ1,timeGJ1] = GaussJacobi(A1,b1',xInicial1,1000);

[raizLU1,timeLU1] = LU(A1,b1');

[raizLLT1,timeLLT1] = LLT(A1,b1');

[raizQR1,timeQR1] = QR(A1, b1);

[raizHH1,timeHH1] = houseHolder(A1,b1);

%[raizGV1,timeGV1] = givens(A1,b1);


% Se cargan los datos para el segundo sistema
A2 = load('1089x1089/A1089.dat');
b2 = load('1089x1089/b1089.dat');
%u = linsolve(A2,b2);

xInicial2=zeros(1,1089);
disp('Segundo sistema');
[raizGS2,itGS2,timeGS2] = GaussSeidel(A2,b2',xInicial2,10000);

[raizGJ2,itGJ2,timeGJ2] = GaussJacobi(A2,b2',xInicial2,10000);

[raizLU2,timeLU2] = LU(A2,b2');

[raizQR2,timeQR2] = QR(A2, b2);

[raizLLT2,timeLLT2] = LLT(A2,b2');

[raizHH2,timeHH2] = houseHolder(A2,b2);

%[raizGV2,timeGV2] = givens(A2,b2);


% Se cargan los datos para el tercer sistema 
A3 = load('4225x4225/A4225.dat');
b3 = load('4225x4225/b4225.dat');

% u = linsolve(A3,b3);

xInicial3=zeros(1,4225);
disp('Tercer sistema');
disp('Gaussseidel')
[raizGS3,itGS3,timeGS3] = GaussSeidel(A3,b3',xInicial3,10000);

disp('GaussJacobi')
[raizGJ3,itGJ3,timeGJ3] = GaussJacobi(A3,b3',xInicial3,10000);

disp('LU')
[raizLU3,timeLU3] = LU(A3,b3');

disp('QR')
[raizQR3,timeQR3] = QR(A3, b3);

disp('LLT')
[raizLLT3,timeLLT3] = LLT(A3,b3');

disp('house-holder')
[raizHH3,timeHH3] = houseHolder(A3,b3);

disp('givens')
%[raizGV3,timeGV3] = givens(A3,b3);

%Exportar datos en .mat
save('data/archivo289.mat','raizGS1','raizGJ1','raizLU1','raizLLT1','raizQR1');
save('data/archivo1089.mat','raizGS2','raizGJ2','raizLU2','raizLLT2','raizQR2');
save('data/archivo4225.mat','raizGS3','raizGJ3','raizLU3','raizLLT3','raizQR3');

%Graficos
graficoRaices('289',raizGJ1,raizGS1);
graficoRaices('1089',raizGJ2,raizGS2);
graficoRaices('4225',raizGJ3,raizGS3);