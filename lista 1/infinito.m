clear
close all
clc

cont = 0;

while (cont <= 5) 
    n1 = randi(100,1000);
    n2 = randi(100,1000);
    if(n2 > n1)
        cont = cont + 1;
    else
        cont = 0;
    end
    pause(0.2);
    fprintf('%i %i\n',n1,n2);
end