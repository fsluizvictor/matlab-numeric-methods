clc;
clear;
close all;

syms x y;
y = x^4 - x^3 - 7*x^2 + x + 6;

tolerancia = 1e-4;
%zeros_da_funcao = isolamento(y,-5,5,0.1);
%plotar_grafico(y,-2,4,0.1)
falsa_posicao(y,-2.1,-2.0,tolerancia,50);
falsa_posicao(y,-1.1,-0.9,tolerancia,50);
falsa_posicao(y,0.9,1.1,tolerancia,50);
falsa_posicao(y,2.9,3.1,tolerancia,50);


