% This function will judge whether a crash happens. 
% If it happens, the function will return 1.
% Otherwise, the function will return 0.

function f = p1_crash(car, w) 
    flag = 0;
    for i = 1 : size(car,2)
        for j = 1 : size(car,2)
            if i == j
                continue;
            else
                if abs(car(i).x-car(j).x)<w && abs(car(i).y-car(j).y)<w
                    flag = 1;
                    break;
                end
            end
        end
    end
    f = flag;
end