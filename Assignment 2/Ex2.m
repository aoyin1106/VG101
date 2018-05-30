clear all, clc;

n = input('Input a positive integer: ');

while true
    num1 = squares(n);
    if (isprime(n)) && (rem(n, 4) == 1) && (num1 ~= 0)
        fprintf('Pythagorean prime: %d = %d ^ 2 + %d ^ 2 \n', n, num1, sqrt(n - num1 ^2));
        break;
    else
        n = n + 1;
    end
end

function num1 = squares(num)    %Judge whether the number can be written as the sum of two squares.
    flag = false;
    for i = 1 : floor(sqrt(num))
        num2 = sqrt(num - i ^ 2);
        if (num2 == fix(num2))
            num1 = i;
            flag = true;
            break;
        end
    end
    if flag == false
        num1 = 0;
    end
end