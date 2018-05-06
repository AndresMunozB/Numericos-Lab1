function graficoNMV2(name,matrizNMV)
figure1 = figure;
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');

ylabel({name},'Interpreter','latex');

xlabel('Iteraciones','Interpreter','latex');

title(strcat(name,' con el metodo de Newton Multivariable'),'Interpreter','latex');

hold on;
plot(matrizNMV(1,:),'-*r','MarkerSize',5,'MarkerFaceColor','r');
plot(matrizNMV(2,:),'-+b','MarkerSize',5,'MarkerFaceColor','g');
hold off;
legend('x1','x2');

saveas(figure1,strcat('imagenes/NMV2', name) , 'png');

end
