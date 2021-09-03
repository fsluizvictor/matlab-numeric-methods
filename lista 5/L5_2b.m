clear all
clc

syms x y F G f g;

f = 4*x^2 - y^3 + 28;
g = 3*x^3 + 4*y^2 - 145;
F = (4*x^2 + 28)^1/3;
G = ((-4*y^2 + 145)^1/3)/3;

x = 0;
y = 0;

tolerancia = 1e-03;
iteracao_maxima = 50;

MAS(f, g,F,G, x,y, tolerancia, iteracao_maxima);
