function MAS(f,g,F,G,x0,y0,tolerancia,iteracao_maxima)
syms x y
fprintf('Itera��o\t\t\tx0\t\t\t\ty0\t\t\t\tx1\t\t\t\ty1\t\t\tF(RAIZ)\t\t\tG(RAIZ)\t\n');

for i=1:1:iteracao_maxima
    f0 = double(subs(f,{x,y},{x0,y0}));
    g0 = double(subs(g,{x,y},{x0,y0}));
    y1 = double(subs(F,{x,y},{x0,y0}));
    x1 = double(subs(G,{x,y},{x0,y0}));
    
    fprintf('\t%d\t\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\n',i,x0,y0,x1,y1,f0,g0);
    if(f0 == 0 && g0 == 0)
        fprintf('M�todo convergiu. Raiz exata encontrada: %.6f, %.6f\n',x0,y0);
        break;
    end
    
    if(abs(f0)<tolerancia && abs(g0)<tolerancia)
        fprintf('M�todo convergiu. Raiz aproximada encontrada: %.6f, %.6f\n',x0,y0);
        break;
    end
    
    x0 = x1;
    y0 = y1;
    
end
if(i == iteracao_maxima)
    fprintf('M�todo n�o convergiu. N�mero m�ximo de itera��es alcan�adas.');
end
end