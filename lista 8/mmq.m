function f = mmq(X,Y)

n = length(X);
syms x;
Sxy = 0;
Sx = 0;
Sy = 0;
Sxq = 0;
Rmin = 0;
Rmed = 0;

for i=1:1:n
    Sxy = Sxy + X(i)*Y(i);
    Sx = Sx + X(i);
    Sxq = Sxq + X(i)^2;
    Sy = Sy + Y(i);
end

a1 = (n*Sxy - Sx*Sy)/(n*Sxq - (Sx)^2);
a0 = Sy/n - a1*Sx/n;

for i = 1:1:length(X)
    Rmin = Rmin + (Y(i) - (a1*X(i) + a0))^2;
    Rmed = Rmed + (Y(i) - Sy/n)^2;
end

f = x*a1 + a0;
fprintf('Equação: %f*x + %f \nResíduos dos mínimos quadrados: %f \nResíduos das médias dos quadrados: %f\n',a1,a0,Rmin,Rmed);
end
