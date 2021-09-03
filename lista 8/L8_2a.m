clear
close all

syms x;
X = [1 2 3 4 5 6 7 8];
Y = [0.45 0.62 0.91 0.78 1.43 1.15 1.79 2.11];

polinomio = mmq(X,Y);

ezplot(polinomio,[0,10]);
hold on;
grid on;
plot(X,Y,'*');