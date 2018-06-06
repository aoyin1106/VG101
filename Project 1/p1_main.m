% Variable description
% n = total number of cars; w = width of the crossroad;
% p = probability that a car breaks the law, i.e., runs the red light;
% t = probability that a car turns left or right;
% g, o, r = time of green/orange/red light on the "horizontal" road.

[n, w, p, t, g, o, r] = p1_input;
w = w / 2;                              % From now on w = width of a lane;
l = 6 * w;                              % l = distance from the center of the crossroad to the edge of the figure;
car = p1_initialize(n, w, l, p, t);     % car = struct, containing all parameters of a certain car.
[car result] = p1_move(n, w, l, g, o, r, p, car);
p1_output(result, car);