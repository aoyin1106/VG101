% This function is used to print the result of the game.
% Input: result (1 for win and 0 for lose), car
% Output: 1. Whether the player wins or not;
%         2. Plates of cars who break the law, i.e., run the red light.

function p1_output(result, car)
    if result == 1
        fprintf('You win!\n');
    else
        fprintf('You lose...\n');
    end
    
    flag = 0;
    for i = 1 : size(car,2)
        if car(i).hit == 1
            flag = 1;
            break;
        end
    end
    if flag == 0
        fprintf('Good! All the cars obey the law.\n');
    else
        fprintf('The plate of those who break the traffic law:\n');
        for i = 1 : size(car,2)
            if car(i).hit == 1
                fprintf('%s\n',car(i).plate);
            end
        end
    end
end