clear all
clc

A = [
    5 -1 2 0; 
    -1 22 -1 3; 
    2 -1 10 -1; 
    0 3 -1 22
    ];
b = [6; 10; -11; 15];
X = [0; 0; 0; 0];
tolerancia = 1e-04;
incremento = 50;

seidel(A,b,X,tolerancia,incremento);
