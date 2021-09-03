clc
clear
close all

X = [2 4 5 7 8 9];
Y = [1 13 41.5 52 83 94];
numero_de_pontos = 6;
polinomio = ndd(X,Y,numero_de_pontos);

syms x;
resultado = double(subs(polinomio,x,8.25));
fprintf('F(8.25) = %.6f\n', resultado);
ezplot(polinomio,[0,10]);
grid on;
hold on;
plot(X,Y,'*');