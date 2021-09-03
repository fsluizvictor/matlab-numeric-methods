clear
close all
clc

array = 0:0.1:(6*pi);
array_seno = seno(array);
array_cosseno = cosseno(array);
array_tangente = tan(array);

figure(1)
plot(array,array_seno);
grid
ylabel('Cosseno');
xlabel('Seno');


figure(2)
plot(array,array_tangente,'*m');
ylabel('t');
xlabel('Tangente');

figure(3)
plot3(array, array_seno, array_cosseno);
ylabel('Seno');
xlabel('Cosseno');
zlabel('t');


