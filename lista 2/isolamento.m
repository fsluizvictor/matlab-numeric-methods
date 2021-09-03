%---------------------------------------------------------
%Função e identifica se existe uma raiz em um determinado
%intervalo [a,b], para as equações não-lineares abaixo
%Criado por: Luiz Victor Ferreira Santos
%---------------------------------------------------------

function busca_raizes = isolamento(funcao, limite_a,limite_b,incremento)
busca_raizes = [];
syms x

possui_raiz = 0;


for i = limite_a: incremento : limite_b
    funcao_aplicada_em_a = subs(funcao,x, i);
    funcao_aplicada_em_b = subs(funcao,x, i + incremento );
    
    if( ((funcao_aplicada_em_a < 0 ) && (funcao_aplicada_em_b > 0 )  || (funcao_aplicada_em_a > 0 ) && (funcao_aplicada_em_b < 0 )) || (funcao_aplicada_em_b == 0 )  || (funcao_aplicada_em_a == 0 ))
        possui_raiz = 0;
        fprintf('[%.5f,%.5f]\n', i,i + incremento);
    end
    
    
end
if possui_raiz == 1
    fprintf('Não tem raiz real.\n');
end
end

