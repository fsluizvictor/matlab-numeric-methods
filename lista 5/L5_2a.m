clear all
clc

syms x y F G f g;

f = 0.2*x^2 + 0.2*x*y - x + 0.6;
g = 0.4*x + 0.1*x*y^2 - y + 0.5;
F = 0.2*x^2 + 0.2*x*y + 0.6;
G = 0.4*x + 0.1*x*y^2 + 0.5;

x = 1;
y = -1;

tolerancia = 1e-03;
iteracao_maxima = 50;

MAS(f, g,F,G, x,y, tolerancia, iteracao_maxima);
