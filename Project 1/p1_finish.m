% This function is used to judge whether the player has won the game.
% Input: car, l, w. See p1_main.m.
% Output:
%  If all the cars pass through the crossroad, the function will return 1.
%  Otherwise, the function will return 0.

function f = p1_finish(car,l,w)
    flag = 1;
    for i = 1 : size(car,2)
        if (car(i).x >= -l-w) && (car(i).x <= l+w) && (car(i).y >= -l-w) && (car(i).y <= l+w)
            flag = 0;
            break;
        end
    end
    f = flag;
end