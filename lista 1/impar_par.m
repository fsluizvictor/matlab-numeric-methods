clear
close all
clc

i = input('');
if(i>0)
    if( mod(i,2) == 0 )
        numeros_pares = 2:2:i;
        numeros_impares = 1:2:i-1;
    else
        numeros_impares = 1:2:i;
        numeros_pares = 2:2:i-1;
    end
end

display(numeros_pares)
display(numeros_impares)