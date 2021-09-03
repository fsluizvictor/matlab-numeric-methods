close 
close all
clc

n = input('ENTRADA : ');
fibonacci = 1:1:n;
fibonacci(1) = 1;
fibonacci(2) = 1;

for i = 3:n
   fibonacci(i) = fibonacci(i-1) + fibonacci(i-2); 
end

display(fibonacci)