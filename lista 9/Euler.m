function Euler(f,x0,xf,y0,nI)
syms x y;
h = ceil((xf-x0)/nI);
t(1)=x0;
Y(1)=y0;
fprintf('Iterações\t\t\txk\t\t\t\tyk\n');
fprintf('\t%.i\t\t\t %.6f\t\t %.6f\n',1,t(1),Y(1));

for n=1:1:h
    t(n+1)=t(n)+nI;
    Y(n+1)=Y(n)+nI * subs(f,[x y],[t(n) Y(n)]);
    fprintf('\t%.i\t\t\t %.6f\t\t %.6f\n',n+1,t(n+1),Y(n+1));
end

plot(t,Y,'r');
hold on;
grid on;
syms y(x);
F = dsolve(diff(y) == f,y(x0) == y0);
ezplot(F,[x0,xf]);
a = double(subs(F,x,xf));
fprintf('\nSolução Euler:\t\tf(%2.6f) = %2.6f\n',xf,Y(length(Y)));
fprintf('Solução Analítica:\tf(%2.6f) = %2.6f\n',xf,a);
fprintf('F = ');
disp(F);

end