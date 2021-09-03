clc
clear all
close all

syms x y(x)
f = y - x;
h = 0.1;
x0 = 0;
xf = 1.6;
y0 = 2;
Euler(f,x0,xf,y0,h);