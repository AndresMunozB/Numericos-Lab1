function graficoErrorNMV2(name,error1,error2)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');
grid on

ylabel({name},'Interpreter','latex');

xlabel('Iteraciones','Interpreter','latex');

title(strcat(name,': errores con el metodo de Newton Multivariable'),'Interpreter','latex');

hold on;
plot(error1,'-*r','MarkerSize',5,'MarkerFaceColor','r'); 
plot(error2,'-+b','MarkerSize',5,'MarkerFaceColor','g');
hold off;

legend('x1','x2')

saveas(figure1,strcat('imagenes/ErrorNMV2', name) , 'jpg');

end
