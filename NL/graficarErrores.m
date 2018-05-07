function graficarErrores(name,biseccion,secante,regula,newton)
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
box(axes1,'on');
hold(axes1,'on');
hold on;
grid on

% Create xlabel
plot([biseccion],'-k.','MarkerSize',5,'MarkerFaceColor','b'); 
plot([secante],'-*r','MarkerSize',5,'MarkerFaceColor','r');
plot([regula],'-+b','MarkerSize',5,'MarkerFaceColor','g'); 
plot([newton],'-og','MarkerSize',5,'MarkerFaceColor','g'); 
title(strcat('Errores de: ',name));
ylabel('Errores'); % y-axis label
xlabel('Iteraciones'); % x-axis label
legend('Bisección','Secante','Regula-Falsi','Newton-Raphson');

saveas(figure1,strcat('imagenes/errores', name) , 'jpg');
end
