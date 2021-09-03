function secantes(y,x0,x1,tolerancia,iteracao_maxima)

syms x
fprintf('Iteração\t\t\tx1\t\t\t\tx2\t\t\t\tx3\t\t\t\tf(x3)\t\n');
    for i=1:1:iteracao_maxima
        fk1 = double(subs(y,x,x0));
        fk2 = double(subs(y,x,x1));
        if((fk1-fk2) ~= 0 )
            xk = double(x0 - ((x0-x1)/(fk1-fk2))*fk1);
            fxk = double(subs(y,x,xk));
            fprintf('\t%d\t\t\t%.6f\t\t%.6f\t\t  %.6f\t\t\t   %.6f\n',i,x0,x1,xk,fxk);
            if(fxk == 0)
                fprintf('Método convergiu. Raiz exata encontrada: %.6f\n',xk);
                break;
            end

            if(abs(fxk) < tolerancia)
                fprintf('Método convergiu. Raiz aproximada encontrada: %.6f\n',xk);
                break;
            end

            x1 = x0;
            x0 = xk;
        end
    end
    if(i == iteracao_maxima)
        fprintf('Método não convergiu. Número máximo de iterações atingido.\n');
    end
end
