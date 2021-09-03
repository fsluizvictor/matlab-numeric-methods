clear
close all
clc

ordem = input('');
matriz_1 = ones(ordem);
matriz_2 = ones(ordem);

for i= 1:1:ordem
    for j = 1:1:ordem
        matriz_1(i,j) = i+j;
        matriz_2(i,j) = i-j;
    end
end

display(matriz_1)
display(matriz_2)
