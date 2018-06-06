% This function is used to prompt the user to input all the parameters.
% There are three difficulty levels: easy, middle, hard.
% The user can also customize all the parameters.
% Output: n, w, p, t, g, o, r. See p1_main for details.

function [n, w, p, t, g, o, r] = p1_input
    difficulty = input('Input difficulty level (1 for easy, 2 for middle, 3 for hard, 0 for customized): ');
    switch difficulty 
        case 1
            n = 10; w = 2; g = 4; o = 2; r = 4; p = 0; t = 0.2;
        case 2
            n = 15; w = 4; g = 6; o = 3; r = 6; p = 0.3; t = 0.4;
        case 3
            n = 20; w = 6; g = 8; o = 3; r = 8; p = 0.6; t = 0.5;
        case 0
            n = input('Input the total number of cars (1~20): ');
            w = input('Input the width of the lane (1~10): ');
            p = input('Input the probability that the car does not stop at the red light (0~1): ');
            t = input('Input the probability for a car to turn left or right (0~1): ');
            g = input('Input the time for green light (1~20): ');
            o = input('Input the time for orange light (1~20): ');
            r = input('Input the time for red light (1~20): ');
        otherwise
            disp('Input format wrong. Difficulty level is set to be easy.');
    end
    
end