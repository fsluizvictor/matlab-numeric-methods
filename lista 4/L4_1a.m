clc;
clear;
close all;

syms x y;
y = ((x+1)^2*exp(x^2-2)) - 1;

tolerancia = 1e-4;
%zeros_da_funcao = isolamento(y,-5,5,0.1);
%plotar_grafico(y,-2,1,0.1)
secantes(y,-1.7,1.6,tolerancia,50);
secantes(y,0.8,0.9,tolerancia,50);
