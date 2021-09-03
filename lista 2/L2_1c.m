clc;
clear;
close all;

syms x y;
y = x^3 + 3.8*x^2 - 8.6*x - 24.4 ;

plotar_grafico(y,-5,4,0.1);
zeros_da_funcao = isolamento(y,-5,4,0.1);