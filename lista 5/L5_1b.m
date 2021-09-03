clear all
clc

syms x y z f g w;

f = 3*x - cos(y*z)- 0.5;
g = x^2 - 81*(y + 0.1)^2 + sin(z) + 1.06  ;
w = exp(-x*y) + 20*z + (10*pi - 3)/3;

x1 = 0.1;
x2 = 0.1;
x3 = -0.1;

tolerancia = 1e-04;
iteracao_maxima = 50;

MNR_3(f, g, w, x1, x2, x3, tolerancia, iteracao_maxima);
