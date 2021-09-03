clc;
clear;
close all;

format long;

syms x y;
y = ((pi*x^2 * (3-x))/3) - 0.5;
%plotar_grafico(y, 0.25, 0.5, 0.1);
tolerancia = 1e-4;
MNR(y, 0.25,0.5,tolerancia,50);