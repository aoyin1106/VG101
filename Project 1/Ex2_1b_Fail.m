s = input('Input a set of elements (digits or letters): ','s');
n = input('Input the size of the random subset of permutations: ');
m = length(s);

perm = [];
j = 1;
while j <= n
    flag = 1;
    temp = [];
    for i = randperm(m)
        temp = [temp, s(i)];
    end
    for i = 1 : j - 1
        if and(logical(ones(1,m)), temp == perm(i))
            flag = 0;
        end
    end
    if flag == 1
        j = j + 1;
        perm = [perm; temp];
    end
end

for i = 1 : size(perm, 1)
    disp(perm(i, :));
end