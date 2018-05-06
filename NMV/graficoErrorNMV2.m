function graficoErrorNMV2(name,error1,error2)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');
ylim([-10 10]);

xlabel('Iteraciones','Interpreter','latex');
xlim([0 20]);

title(strcat(name,': errores con el metodo de Newton Multivariable'),'Interpreter','latex');

plot(error1); 
hold on;
plot(error2);
hold off;

legend('x1','x2')

saveas(figure1,strcat('imagenes/ErrorNMV3', name) , 'png');

end
