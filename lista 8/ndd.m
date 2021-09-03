function P = ndd(X,Y,numero_de_pontos)
syms x;
D = [];
for i = 1:1:numero_de_pontos
    if (i == 1)
        for j = 1:1:numero_de_pontos
            D(j,i) = Y(j);
        end
    else
        p = i-1;
        for j = 1:1:numero_de_pontos
            if(j+p > numero_de_pontos)
                break;
            else
                D(j,i) = (D(j+1,i-1) - D(j,i-1)) / (X(j+p) - X(j));
            end
        end
    end
end
P = 0;
for i = 1:1:numero_de_pontos
    v = 1;
    for j = 1:1:i-1
        v = v*(x - X(j));
    end
    v = v*D(1,i);
    P = P + v;
end
fprintf(' Equação: ');
P = simplify(P);
disp(P);
end