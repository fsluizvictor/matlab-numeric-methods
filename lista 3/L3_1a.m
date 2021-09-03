clc;
clear;
close all;

format long;

syms x y;
y = 80 + 90*cos((pi/3)*x);
%plotar_grafico(y,-3, 5, 0.1);
tolerancia = 1e-4;
bisseccao(y,-3,5,tolerancia,50);