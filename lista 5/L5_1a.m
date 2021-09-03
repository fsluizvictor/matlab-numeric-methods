clear all
clc

syms x y z f g w;

f = x^2 + y^2 + z^2 - 9;
g = x * y * z - 1;
w = x + y - z^2;

x1 = 0.7;
x2 = 1.5;
x3 = x2;

tolerancia = 1e-04;
iteracao_maxima = 50;

MNR_3(f, g, w, x1, x2, x3, tolerancia, iteracao_maxima);
