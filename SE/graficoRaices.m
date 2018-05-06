function graficoRaices(name,raizGJ,raizGS)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel('Raices','Interpreter','latex');


xlabel('Iteraciones','Interpreter','latex');


title(strcat(name,' con los metodos no lineales'),'Interpreter','latex');

plot(raizGJ); 
hold on;
plot(raizGS);
hold off;

legend('GaussJacobi','GaussSeidel');

saveas(figure1,strcat('imagenes/grafico', name) , 'png');

end

