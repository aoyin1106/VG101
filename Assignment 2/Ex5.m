clear all, clc;

s     = input('Please enter a positive number: ', 's');
while true
    n     = str2num(s);
    temp  = n;
    digit = length(s);	
    sum   = 0;
    for i = 1 : digit
        sum  = sum + rem(temp, 10) ^ digit;
        temp = floor(temp / 10);
    end
    if sum == n
        fprintf('%d is an Armstrong number.\n', n);
        break;
    end
    s = num2str(n + 1);
end
