clc;
clear;
close all;

syms x y;
y = x^2 + 3.3*x + exp(x) + 2.42;

tolerancia = 1e-4;
%zeros_da_funcao = isolamento(y,-5,5,0.1);
%plotar_grafico(y,-2,1,0.1)
secantes(y,-2.1,-2.0,tolerancia,50);
secantes(y,-1.5,-1.4,tolerancia,50);
