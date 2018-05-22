clear all, clc;
% Intro to Computer & Programming
% Assignment 1 - Ex.5
% Wang Tianyi - 517370910160

% a list of values and (two units)
% input values and units
initial = input('input a list of values in bracket(a space between each value):');
unit1 = input('input a unit:','s');
unit2 = input('input another unit:','s');
i = 1;

% combine the two units
unit = [unit1, unit2];

% transfer the units
switch unit
    case 'stonespound'
        final = initial * 14 ;
    case 'poundkg'
        final = initial * 0.45 ;
    case 'kgstones'
        final = initial * 0.157 ;
    otherwise
        disp('The units are not right!');
        return;
end

for i=1:numel(initial)
    fprintf('%.2f %s = %.2f %s\n', initial(i), unit1, final(i),unit2);
end
