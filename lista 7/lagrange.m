function polinomio = lagrange(X,Y,grau)
syms x;    
polinomio = 0;
for k=1:1:grau
    L = 1;
    for i=1:1:grau
        if(k ~= i)
            L = L*((x - X(i))/(X(k) - X(i)));
        end
    end
    polinomio = polinomio + Y(k)*L;
end
polinomio = simplify(polinomio);
fprintf('Polinomio: ');
disp(polinomio);
end