function car = p1_initialize(n, w, p, t)
    tmp = [];
    l = 6 * w;
    division = [0, sort(randperm(n-1, 3)), n];

    for i = 1 : 4
        for j = 1 : division(i+1) - division(i)
            x = 0;
            y = 0;
            if i == 1
                x = l + 2 * j * w - 1.5 * w;
                y = w / 2;
            elseif i == 2
                x = -w / 2;
                y = l + 2 * j * w - 1.5 * w;
            elseif i == 3
                x = -(l + 2 * j * w - 1.5 * w);
                y = -w / 2;
            elseif i == 4
                x = w / 2;
                y = -(l + 2 * j * w - 1.5 * w);
            end
            p1 = rand(1);
            p2 = rand(1);
            s  = 0;
            f  = 0;
            if p1 < t/2
                s = -1;
            elseif p1 < t
                s = 1;
            end
            if p2 < p
                f = 1;
            end
            
            tmp = [tmp, struct('group',i,'plate',j,'length',w*0.9,'width',w/2,'lane',i,'x',x,'y',y,'turn',s,'brklaw',f)];
        end
    end
    car = tmp;
end