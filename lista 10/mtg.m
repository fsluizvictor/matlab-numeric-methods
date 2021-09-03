function mtg(funcao, a, b, n)

syms x;

soma = 0;
h = (b - a) / n;

%argumentos xk espacados em uma quantia de h
for i = a + h : h : b - h
    soma = soma + double(subs(funcao, x, i));
end

fx0 = double(subs(funcao, x, a));
fxn = double(subs(funcao, x, b));

soma = (h/2) * (fx0 + (2*soma) + fxn);

fprintf('Resultado: %.6f\n', soma);

end