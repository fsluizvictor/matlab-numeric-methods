clc;
clear;
close all;

syms x y;
y = -x^(1/3)+0.5*x^2-2;

plotar_grafico(y,1,5,0.1);
zeros_da_funcao = isolamento(y,1,5,0.1);