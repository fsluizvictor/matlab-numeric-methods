clear all
clc

x_k = [0.1 0.2 0.3];
f_k = [1.3499 1.8221 2.4596];
grau  = 2;

polinomio = lagrange(x_k,f_k,grau + 1);

syms x;
auxiliar = double(subs(polinomio,x,0.25));
fprintf('f(0.25) = %.6f\n',auxiliar);

ezplot( polinomio, [0.0,1.0]);
hold on;
grid;
xlabel('Eixo X')
ylabel('Eixo Y')
plot(x_k,f_k,'r*');