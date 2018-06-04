n = 20;
pow = 64;
a = zeros(1,n);
a(1) = 1;
for i = 1 : pow
    j = n - 1;
    while j >= 1    %Multiply from high-order digit to low-order digit.
        a(j) = a(j) * 2;
        a(j + 1) = a(j + 1) + floor(a(j) / 10);
        a(j) = rem(a(j), 10);
        j = j - 1;
    end
end
a(1) = a(1) - 1;    
%Since the last number of 2^n (n>=0) is always greater than 0, a(1) is also
%always greater than or equal to 0.

fprintf('Total number of grains of wheat: ');
j = n;
while j >= 1
    fprintf('%d',a(j));
    j = j - 1;
end
fprintf('\n');