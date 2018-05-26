clear all, clc;

n = input('Input a number less than 999,999,999: ');

if n < 0
    disp('The number is negative.')
elseif n == 0
    disp('zero')
elseif n < 10 ^ 3
    disp(outnum(1, n))
elseif n < 10 ^ 6
    s = [outnum(1, floor(n / (10 ^ 3))) ' thousand ' outnum(0, rem(n, 10 ^3))];
    disp(s)
elseif n < 10 ^ 9
    s = [outnum(1, floor(n / (10 ^ 6))) ' million ' outnum(0, rem(floor(n / (10 ^ 3)), 10 ^ 3))];
    if rem(floor(n / (10 ^ 3)), 10 ^ 3) > 0
        s = [s  ' thousand '];
    end
    s = [s outnum(0, rem(n, 10 ^ 3))];
    disp(s)
else
    disp('The number is too large. You should ask JI strongest student LYH for the answer.')
end

function num = outnum(flag, x)
    num1 = floor(x / 100);
    num2 = rem(floor(x / 10), 10);
    num3 = rem(x, 10);
    if x == 0
        num = '';
    elseif x < 20                                                           % Example: 15
        num = read(x);
        if flag == 0
            num = ['and ' num];
        end
    elseif x < 100                                                          % Example: 75
        num = [read(num2 * 10) ' ' read(num3)];
    elseif rem(x, 100) == 0                                                 % Example: 200
        num = [read(num1) ' hundred '];
    elseif num2 < 2                                                         % Example: 215
        num = [read(num1) ' hundred and ' read(rem(x, 100))];
    else                                                                    % Example: 275
        num = [read(num1) ' hundred and ' read(num2 * 10) ' ' read(num3)];
    end
end

function num = read(x)
    switch x
        case 0
            num = '';
        case 1
            num = 'one';
        case 2
            num = 'two';
        case 3
            num = 'three';
        case 4
            num = 'four';
        case 5
            num = 'five';
        case 6
            num = 'six';
        case 7
            num = 'seven';
        case 8
            num = 'eight';
        case 9
            num = 'nine';
        case 10
            num = 'ten';
        case 11
            num = 'eleven';
        case 12
            num = 'twelve';
        case 13
            num = 'thirteen';
        case 14
            num = 'fourteen';
        case 15
            num = 'fifteen';
        case 16
            num = 'sixteen';
        case 17
            num = 'seventeen';
        case 18
            num = 'eighteen';
        case 19
            num = 'nineteen';
        case 20
            num = 'twenty';
        case 30
            num = 'thirty';
        case 40
            num = 'forty';
        case 50
            num = 'fifty';
        case 60
            num = 'sixty';
        case 70
            num = 'seventy';
        case 80
            num = 'eighty';
        case 90
            num = 'ninty';
        otherwise
            num = 'error';
    end
end