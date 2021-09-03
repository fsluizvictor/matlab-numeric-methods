function [] = bissecao(y, a, b,tolerancia, iteracao_maxima)

syms x

fprintf('Itera��o\t\t\ta\t\t\t\tb\t\t\t\tRAIZ\t\t\t\tf(RAIZ)\t\n');

for i=1:1:iteracao_maxima
    x1 = double((a+b)/2);
    f_x1 = double(subs(y,x,x1));
    f_a = double(subs(y,a));
    
    fprintf('\t%d\t\t\t%.6f\t\t%.6f\t\t  %.6f\t\t\t   %.6f\n',i,a,b,x1,f_x1);
    
    %� f(x1)=0, x1 � a raiz procurada;
    
    if(f_x1 == 0)
        fprinf('M�todo convergiu. Raiz exata encontrada: %.6f\n', x1);
        break;
    end
    
    %� f(a)f(x1)<0, ent�o o zero est� entre a e x1;
    if(f_a*f_x1 < 0)
        b = x1;
    else
        a = x1;
    end
    
    %� f(a)f(x1)<0, ent�o o zero est� entre a e x1;
    
    if (abs(f_x1) < tolerancia)
        fprintf('M�todo convergiu. Raiz aproximada encontrada: %.6f\n', x1);
        break;
    end
end

if(i == iteracao_maxima)
    fprintf('M�todo n�o convergiu. N�mero m�ximo de itera��es atingido.\n');
end
end