clc;
clear;
close all;

syms x y;
y = x^2-exp(-x);

plotar_grafico(y,0,3.5,0.1);
zeros_da_funcao = isolamento(y,0,3.5,0.1);