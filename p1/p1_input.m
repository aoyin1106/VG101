function [n, w, p, t, g, o, r] = p1_input
    n = input('Input the total number of cars: ');
    w = input('Input the width of the lane (1 is the best): ');
    p = input('Input the probability that the car does not stop at the red light: ');
    t = input('Input the probability for a car to turn left or right: ');
    g = input('Input the time for green light: ');
    o = input('Input the time for orange light: ');
    r = input('Input the time for red light: ');
end