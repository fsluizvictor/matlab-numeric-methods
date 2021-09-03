function MNR(y,x0,x1,tolerancia,iteracao_maxima)
syms x;
fprintf('Iteração\t\t\tx0\t\t\t\tx1\t\t\tRAIZ\t\t\t\tf(RAIZ)\t\n');
    for i=1:1:iteracao_maxima
        
        f_x = double(subs(y,x,x0)); 
        
        dx = diff(y); 
        
        f_dx = double(subs(dx,x,x0));
        
        if(f_dx ~= 0)
        
            xk = x0 - double(f_x/f_dx); 
            
            f_xk = double(subs(y,x,xk));
            
            fprintf('\t%d\t\t\t%.6f\t\t%.6f\t\t  %.6f\t\t\t   %.6f\n',i,x0,xk,xk,f_xk);
            
            if(f_xk == 0)
            
                fprintf('Método convergiu. Raiz exata encontrada: %.6f\n',xk);
                break;
            
            end
            if(abs(f_xk) < tolerancia)
            
                fprintf('Método convergiu. Raiz aproximada encontrada: %.6f\n',xk);
                break;
            
            end
            
            x0 = xk;
        
        end
    end
    
    if(i == iteracao_maxima)
    
        fprintf('Método não convergiu. Número máximo de iterações atingido.');
    
    end
    
end