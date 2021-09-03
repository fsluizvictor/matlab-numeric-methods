clc;
clear;
close all;

format long;

syms x y;
y = 7*(0.2 - 0.9^x) + 2;
%plotar_grafico(y, 0, 10, 0.1);
tolerancia = 1e-4;
MNR(y, 0,10,tolerancia,50);