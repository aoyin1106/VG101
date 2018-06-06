% This function is used to initialize the parameters of all the cars.
% Input: n, w, l, p, t. See p1_main.m.
% Output: car, including its group, plate, length, width, current lane,
%         whether to turn, whether "plan" to break traffic law, 
%         whether actually run the red light and hit another car.

function car = p1_initialize(n, w, l, p, t)
    tmp = [];
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
            
            tmp = [tmp, struct('group',i,'plate',j,'length',w*0.9,'width',w/2,'lane',i,'x',x,'y',y,'turn',s,'brklaw',f,'hit',0)];
        end
    end
    
    tmp = p1_getplate(n, tmp);
    
    car = tmp;
end