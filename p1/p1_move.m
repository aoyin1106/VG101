function p1_move(n, w, g, o, r, car)
    time = 0;
    timecycle = g + o + r + o;
    l = 6 * w;
    
    while (p1_crash(car, w) == 0)
        clf;
        axis([-l,l,-l,l]);
        p1_drawroad(w);
        time = time + 1;
        status = 0;
        if rem(time - 1, timecycle) + 1 <= g
            status = 1;
            p1_light(1,w);
        elseif rem(time - 1, timecycle) + 1 <= g + o
            status = 2;
            p1_light(2,w);
        elseif rem(time - 1, timecycle) + 1 <= g + o + r
            status = 3;
            p1_light(3,w);
        else
            status = 2;
            p1_light(2,w);
        end
        
        car_temp = car;
        for i = 1 : n
            if (car(i).x >= -w) && (car(i).x <= w) && (car(i).y >= -w) && (car(i).y <= w)
                if car(i).lane == 1
                    car(i).x = car(i).x - 1;
                    if p1_crash(car, w) == 1
                        car(i).x = car(i).x + 1;
                    end
                    if (car(i).turn == 1) && (car(i).x == w/2)
                        car(i).lane = 4;
                    elseif (car(i).turn == -1) && (car(i).x == -w/2)
                        car(i).lane = 2;
                        car(i).turn = 0;
                    end
                elseif car(i).lane == 2
                    car(i).y = car(i).y - 1;
                    if p1_crash(car, w) == 1
                        car(i).y = car(i).y + 1;
                    end
                    if (car(i).turn == 1) && (car(i).y == w/2)
                        car(i).lane = 1;
                    elseif (car(i).turn == -1) && (car(i).y == -w/2)
                        car(i).lane = 3;
                        car(i).turn = 0;
                    end
                elseif car(i).lane == 3
                    car(i).x = car(i).x + 1;
                    if p1_crash(car, w) == 1
                        car(i).x = car(i).x - 1;
                    end
                    if (car(i).turn == 1) && (car(i).x == -w/2) 
                        car(i).lane = 2;
                    end
                    if (car(i).turn == -1) && (car(i).x == w/2)
                        car(i).lane = 4;
                        car(i).turn = 0;
                    end
                elseif car(i).lane == 4
                    car(i).y = car(i).y + 1;
                    if p1_crash(car, w) == 1
                        car(i).y = car(i).y - 1;
                    end
                    if (car(i).turn == 1) && (car(i).y == -w/2)
                        car(i).lane = 3;
                    elseif (car(i).turn == -1) && (car(i).y == w/2)
                        car(i).lane = 1;
                        car(i).turn = 0;
                    end
                end
                
            elseif status == 1
                if car(i).lane == 1
                    car(i).x = car(i).x - 1;
                    if p1_crash(car, w) == 1
                        car(i).x = car(i).x + 1;
                    end
                elseif car(i).lane == 2
                    if car(i).brklaw == 0
                        temp = min([1, abs(car(i).y - 1.5*w)]);
                        car(i).y = car(i).y - temp;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y + temp;
                        end
                    else
                        car(i).y = car(i).y - 1;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y + 1;
                        end
                    end
                elseif car(i).lane == 3
                    car(i).x = car(i).x + 1;
                    if p1_crash(car, w) == 1
                        car(i).x = car(i).x - 1;
                    end
                elseif car(i).lane == 4
                    if car(i).brklaw == 0
                        temp = min([1, abs(-car(i).y - 1.5*w)]);
                        car(i).y = car(i).y + temp;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y - temp;
                        end
                    else
                        car(i).y = car(i).y + 1;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y - 1;
                        end
                    end
                end
                
            elseif status == 3
                if car(i).lane == 2
                    car(i).y = car(i).y - 1;
                    if p1_crash(car, w) == 1
                        car(i).y = car(i).y + 1;
                    end
                elseif car(i).lane == 1
                    if car(i).brklaw == 0
                        temp = min([1, abs(car(i).x - 1.5*w)]);
                        car(i).x = car(i).x - temp;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x + temp;
                        end
                    else
                        car(i).x = car(i).x - 1;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x + 1;
                        end
                    end
                elseif car(i).lane == 4
                    car(i).y = car(i).y + 1;
                    if p1_crash(car, w) == 1
                        car(i).y = car(i).y - 1;
                    end
                elseif car(i).lane == 3
                    if car(i).brklaw == 0
                        temp = min([1, abs(-car(i).x - 1.5*w)]);
                        car(i).x = car(i).x + temp;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x - temp;
                        end
                    else
                        car(i).x = car(i).x + 1;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x - 1;
                        end
                    end
                end
                
            elseif status == 2
                if car(i).lane == 1
                    if car(i).brklaw == 0
                        temp = min([1, abs(car(i).x - 1.5*w)]);
                        car(i).x = car(i).x - temp;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x + temp;
                        end
                    else
                        car(i).x = car(i).x - 1;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x + 1;
                        end
                    end
                elseif car(i).lane == 2
                    if car(i).brklaw == 0
                        temp = min([1, abs(car(i).y - 1.5*w)]);
                        car(i).y = car(i).y - temp;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y + temp;
                        end
                    else
                        car(i).y = car(i).y - 1;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y + 1;
                        end
                    end
                elseif car(i).lane == 3
                    if car(i).brklaw == 0
                        temp = min([1, abs(-car(i).x - 1.5*w)]);
                        car(i).x = car(i).x + temp;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x - temp;
                        end
                    else
                        car(i).x = car(i).x + 1;
                        if p1_crash(car, w) == 1
                            car(i).x = car(i).x - 1;
                        end
                    end
                elseif car(i).lane == 4
                    if car(i).brklaw == 0
                        temp = min([1, abs(-car(i).y - 1.5*w)]);
                        car(i).y = car(i).y + temp;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y - temp;
                        end
                    else
                        car(i).y = car(i).y + 1;
                        if p1_crash(car, w) == 1
                            car(i).y = car(i).y - 1;
                        end
                    end
                end
            end
            p1_displaycar(car, i);
        end
%         if p1_finish == 1
%             break;
%         end
        pause(1);
    end
end