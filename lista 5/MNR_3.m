function MNR_3(f,g,w,x0,y0,z0,tolerancia,iteracao_maxima)

syms x y z;

fprintf('Iteração\t\t\tx0\t\t\t\ty0\t\t\t\tz0\t\t\t\tx1\t\t\t\ty1\t\t\t\tz1\t\t\tF(RAIZ)\t\t\tG(RAIZ)\t\t\tw(RAIZ)\n');

for i=1:1:iteracao_maxima
    x_k = [x0;y0;z0];
    f0 = double(subs(f,{x y z},{x0 y0 z0}));
    g0 = double(subs(g,{x y z},{x0 y0 z0}));
    w0 = double(subs(w,{x y z},{x0 y0 z0}));
    F = [f0;g0;w0];
    
    %1º passo) Calcular o vetor F(x), fazendo f(x)=0;
    % consiste em ter a derivada e aplicá-la na função
    % passo feito para se ter a matriz jacobiana
    df_dx = diff(f,x);
    df_dy = diff(f,y);
    df_dz = diff(f,z);
    
    fd_f_dx = double(subs(df_dx,{x y z},{x0 y0 z0}));
    fd_f_dy = double(subs(df_dy,{x y z},{x0 y0 z0}));
    fd_f_dz = double(subs(df_dz,{x y z},{x0 y0 z0}));
    
    dg_dx = diff(g,x);
    dg_dy = diff(g,y);
    dg_dz = diff(g,z);
    
    fd_g_dx = double(subs(dg_dx,{x y z},{x0 y0 z0}));
    fd_g_dy = double(subs(dg_dy,{x y z},{x0 y0 z0}));
    fd_g_dz = double(subs(dg_dz,{x y z},{x0 y0 z0}));
    
    dw_dx = diff(w,x);
    dw_dy = diff(w,y);
    dw_dz = diff(w,z);
    
    fd_w_dx = double(subs(dw_dx,{x y z},{x0 y0 z0}));
    fd_w_dy = double(subs(dw_dy,{x y z},{x0 y0 z0}));
    fd_w_dz = double(subs(dw_dz,{x y z},{x0 y0 z0}));
    
    % 2º passo) Calcular a matriz jacobiana F’(x);
    
    matriz_jacobiana = [fd_f_dx fd_f_dy fd_f_dz; fd_g_dx fd_g_dy fd_g_dz; fd_w_dx fd_w_dy fd_w_dz];
    
    % 3º passo) Calcular novos valores X utilizando a fórmula de recorrência.
    
    matriz_inversa = inv(matriz_jacobiana);
    
    %• F’(x) é uma matriz NxN com os elementos das derivadas parciais, denominada matriz Jacobiana;
    %• F(x) é um vetor coluna, na forma f(x,y,...,m)=0.
    
    % equação de recorrência => x_k+1 = x_k - F(x_x) / F'(x_k)
    x_k_1 = x_k - matriz_inversa*F;
    
    fprintf('\t%d\t\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\t\t%.6f\n',i,x0,y0,z0,x_k_1(1,1),x_k_1(2,1),x_k_1(3,1),f0,g0,w0);
    
    
    if(f0 == 0  && g0 == 0 && w0 == 0)
        fprintf('Método convergiu. Raiz exata encontrada: x = %.6f, y = %.6f, z = %.6f\n',x_k_1(1,1),x_k_1(2,1),x_k_1(3,1));
        break;
    end
    
    if(abs(f0) < tolerancia && abs(g0) < tolerancia && abs(w0) < tolerancia)
        fprintf('Método convergiu. Raiz aproximada encontrada: x = %.6f, y = %.6f, z = %.6f\n',x_k_1(1,1),x_k_1(2,1),x_k_1(3,1));
        break;
    end
    
    x0 = x_k_1(1,1);
    y0 = x_k_1(2,1);
    z0 = x_k_1(3,1);
end
if(i == iteracao_maxima)
    fprintf('Método não convergiu. Número máximo de iterações alcançadas.');
end
end
    