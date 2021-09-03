clc
close all
clear all

syms x
f = 0.2+25*x-200*x^2+675*x^3-900*x^4+400*x^5;
N = 6;
mtg(f,0,1.2,N);