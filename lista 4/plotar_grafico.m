function [] = plotar_grafico( y, limite_a, limite_b,incremento )
    syms x
    array_x = [];
    array_y = [];
    for i = limite_a:incremento:limite_b
        array_y = [array_y;double(subs(y,x,i))];
        array_x = [array_x;i];
    end
    plot(array_x, array_y);
    xlabel('X');
    ylabel('Y');
    grid;
end

