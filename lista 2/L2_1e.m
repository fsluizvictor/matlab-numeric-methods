clc;
clear;
close all;

syms x y;
y = x^2-3*x+exp(x)-2;

plotar_grafico(y,-2,3,0.1);
zeros_da_funcao = isolamento(y,-2,3,0.1);