function seidel(A,b,X,tolerancia,iteracao_maxima)

tamanho = length(A);

for i=1:1:tamanho
    for j=1:1:tamanho
        if(j <= i)
            L(i,j) = A(i,j);
        end
    end
end

M = A - L;

fprintf('Iteração\t\t\tx0\t\t\t\ty0\t\t\t\tz0\t\t\t\tw0\t\t\t\tx1\t\t\t\ty1\t\t\t\tz1\t\t\t\tw1\t\t\tDistância\n');

for i=1:1:iteracao_maxima
    
    XK = inv(L)*(b - M*X);
    d = max(XK-X);
    
    fprintf('\t%d\t\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\n',i,X(1,1),X(2,1),X(3,1),X(4,1),XK(1,1),XK(2,1),XK(3,1),XK(4,1),d);
    
    
     if(abs(d) == 0)
        fprintf('Método convergiu. Raiz exata encontrada: x = %.6f, y = %.6f, z = %.6f, w = %.6f\n',X(1,1),X(2,1),X(3,1),X(4,1));
        break;
     end
    
     if(abs(d) < tolerancia)
        fprintf('Método convergiu. Raiz aproximada encontrada: x = %.6f, y = %.6f, z = %.6f, w = %.6f\n',X(1,1),X(2,1),X(3,1),X(4,1));
        break;
     end
    
     X = XK;
end

if (i == iteracao_maxima)
    fprintf('Método não convergiu. Número máximo de iterações alcançadas.');
end
end
