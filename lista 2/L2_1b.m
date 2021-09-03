clc;
clear;
close all;

syms x y;
y = x^3 - 155;

plotar_grafico(y,2,7,0.1);
zeros_da_funcao = isolamento(y,2,7,0.1);