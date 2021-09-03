function falsa_posicao(y,a,b,tolerancia,iteracao_maxima)
syms x
fprintf('Iteração\t\t\tA\t\t\t\tB\t\t\t\tX1\t\t\t\tf(X1)\t\n');
for i=1:1:iteracao_maxima
    fb = double(subs(y,x,b));
    fa = double(subs(y,x,a));
    x1 = double((a*fb - b*fa)/(fb-fa));
    fx1 = double(subs(y,x,x1));
    fprintf('\t%d\t\t\t%.6f\t\t%.6f\t\t  %.6f\t\t\t   %.6f\n',i,a,b,x1,fx1);
    if(fx1 == 0)
        fprintf('Método convergiu. Raiz exata encontrada: %.6f\n',x1');
        break;
    end
    
    if (abs(fx1) < tolerancia)
        fprintf('Método convergiu. Raiz aproximada encontrada: %.6f\n', x1);
        break;
    end
    
    if(fa*fx1 < 0)
        b = x1;
    elseif(fa*fx1 > 0)
        a = x1;
    end
end

if (i == iteracao_maxima)
    fprintf('Método não convergiu. Número máximo de iterações atingido.\n');
end

end