clc;
clear;
close all;

format long;

syms x y;
y = 20*(exp(-0.2*x)-exp(-0.75*x))-5;
%plotar_grafico(y,-5, 2, 0.1);
tolerancia = 1e-4;
bisseccao(y,-5,2,tolerancia,50);