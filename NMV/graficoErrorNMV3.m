function graficoErrorNMV3(name,error1,error2,error3)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');

xlabel('Iteraciones','Interpreter','latex');

title(strcat(name,': errores con el metodo de Newton Multivariable'),'Interpreter','latex');

hold on;

plot(error1,'-*r','MarkerSize',5,'MarkerFaceColor','r'); 
plot(error2,'-+b','MarkerSize',5,'MarkerFaceColor','g');
plot(error3,'-og','MarkerSize',5,'MarkerFaceColor','g');
hold off;

legend('x1','x2','x3');

saveas(figure1,strcat('imagenes/ErrorNMV2', name) , 'png');

end
