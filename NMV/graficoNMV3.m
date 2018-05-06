function graficoNMV3(name,matrizNMV)
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
plot(matrizNMV(3,:),'-og','MarkerSize',5,'MarkerFaceColor','g');
hold off;

legend('x1','x2','x3');

saveas(figure1,strcat('imagenes/NMV3', name) , 'png');

end
