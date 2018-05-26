clear all, clc;

s = input('Please enter a year: ', 's');
year = str2num(s);
while (isempty(year) || year ~= fix(year))                                  %Judge whether the input is valid.
    s = input('The input format is wrong. Please enter again: ', 's');
    year = str2num(s);
end;

if (rem(year, 400) == 0) || (rem(year, 4) == 0) && (rem(year, 100) ~= 0)
    disp('Leap year.')
else
    disp('Regular year.')
end