function graficoRaices(name,raizGJ,raizGS)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel('Raices','Interpreter','latex');
ylim([0 1000000]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 300]);

title(strcat(name,' con los metodos no lineales'),'Interpreter','latex');

plot(raizGJ); 
hold on;
plot(raizGS);
hold off;

legend('GaussJacobi','GaussSeidel');

saveas(figure1,strcat('graficos/Imagenes/figuraGrafico', name) , 'png');

end

