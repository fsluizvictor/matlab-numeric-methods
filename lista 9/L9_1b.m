clc
close all
clear all

syms x y(x)
f = y*power(x,2)-y;
h = 0.1;
x0 = 0;
y0 = 1;
xf = 2.4;
Euler(f,x0,xf,y0,h);