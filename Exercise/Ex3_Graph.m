function Ex3_Graph(n)
    x = [0];
    y = [0];
    i = 1;
    while i <= n - 1
        tx = randi([0,10]);
        ty = randi([0,10]);
        f = 1;
        for j = 1 : i - 1
            if (tx == x(j)) && (ty == y(j))
                f = 0;
                break;
            end
        end
        if f == 1
            x = [x tx];
            y = [y ty];
            i = i + 1;
        end
    end
    
    next = zeros(1, n);
    used = zeros(1, n);
    curr = 1;
    for i = 1 : n - 1
        used(curr) = 1;
        tmp = 0;
        if rem(i, 2) == 1
            min = 10000;
            for j = 1 : n
                if (used(j) == 0) && (sqrt( (x(curr)-x(j))^2 + (y(curr)-y(j))^2 ) < min)
                    min = sqrt( (x(curr)-x(j))^2 + (y(curr)-y(j))^2 );
                    tmp = j;
                end
            end
            next(curr) = tmp;
        else
            max = 0;
            for j = 1 : n
                if (used(j) == 0) && (sqrt( (x(curr)-x(j))^2 + (y(curr)-y(j))^2 ) > max)
                    max = sqrt( (x(curr)-x(j))^2 + (y(curr)-y(j))^2 );
                    tmp = j;
                end
            end
            next(curr) = tmp;
        end
        curr = tmp;
    end
    used(curr) = 1;
    next(curr) = 1;
    
    
    hold on;
    
    for i = 1 : n
        rectangle('Position', [x(i)-0.15,y(i)-0.15,0.3,0.3], 'Curvature', 1);
    end
    
    curr = 1;
    for i = 1 : n
        tx = x(next(curr));
        ty = y(next(curr));
        plot([x(curr),tx],[y(curr),ty]);
        curr = next(curr);
        pause(1);
    end
    hold off;
end