clc;
clear;
close all;

syms x y;
y = x^3 + 1.2*x^2 - 19*x;

tolerancia = 1e-4;
%zeros_da_funcao = isolamento(y,-6,5,0.1);
%plotar_grafico(y,-6,5,0.1)
falsa_posicao(y,-5.1,-4.9,tolerancia,50);
falsa_posicao(y,-0.1,0.1,tolerancia,50);
falsa_posicao(y,3.7,3.9,tolerancia,50);




