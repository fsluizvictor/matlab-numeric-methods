clc;
clear;
close all;

syms x y;
y = x^10 - 1;

plotar_grafico(y,-3,3,0.1);
zeros_da_funcao = isolamento(y,-3,3,0.1);