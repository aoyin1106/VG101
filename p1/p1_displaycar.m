function p1_displaycar(car,i)  %loc = location, dir = direction
%     w = 1;
%     l = 4;
%     length = w;
%     width  = w / 2;
%     lane = 1;
%     dir = 180;
%     loc = 1;
    hold on;
    c = 'b';
    switch car(i).group
        case 1
            c = 'b';
        case 2
            c = 'y';
        case 3
            c = 'm';
        case 4
            c = 'c';
    end
    if (car(i).lane == 1) || (car(i).lane == 3)
        rectangle('Position',[car(i).x-car(i).length/2,car(i).y-car(i).width/2,car(i).length,car(i).width],'edgecolor','k','facecolor',c);
    elseif (car(i).lane == 2) || (car(i).lane == 4)
        rectangle('Position',[car(i).x-car(i).width/2,car(i).y-car(i).length/2,car(i).width,car(i).length],'edgecolor','k','facecolor',c);
    end
    hold off;
end