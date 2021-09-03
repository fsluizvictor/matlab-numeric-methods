clear all
clc

x = [-1 0 3];
y = [15 8 -1];
grau = 2;

polinomio = lagrange(x,y,grau + 1);

ezplot( polinomio, [-10,10]);
hold on;
grid;
xlabel('Eixo X')
ylabel('Eixo Y')
plot(x,y,'r*');