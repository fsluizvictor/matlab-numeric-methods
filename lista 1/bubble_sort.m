close 
clear all
clc

n = input('ENTRADA : ');
array = 1:1:n;
for k = 1:1:n
    array(k) = randi(100);    
end

aux = 0;

for i = 1:1:n
    for j = 1:1:n
        if array(j) >= array(i)
            aux = array(i);
            array(i) = array(j);
            array(j) = aux;
        end
    end
end 
   
            
display(array);


