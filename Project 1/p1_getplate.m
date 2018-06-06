% This function is used to get plates for every car.
% Input: n, car(without plates).
% Output: car(with plates).

function car = p1_getplate(n, car)
    temp = p1_ex2_2(n);
    for i = 1 : n
        car(i).plate = temp(i,:);
    end
end

function result = p1_ex2_2(n)
    s = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    result = [];
    sequence = '';
    
    i = 1;
    while i <= n
        temp = generate_perm(sequence, [], s);
        temp = [char(randi([65,90])), ' ', temp(1 : 5)];
        for j = 1 : i - 1
            if strcmp(temp, result(j,:)) || (checkplate(temp) == 0)
                i = i - 1;
                temp = '';
                break;
            end
        end
        result = [result; temp];
        i = i + 1;
    end
end

function result = generate_perm(sequence, result, s)    % Algorithm: Similar to Depth-First Search
    if size(result, 1) == 1
        return;
    elseif size(s, 2) == 0
        result = sequence;
    else
        i = randi(size(s, 2));
        temp = s;
        sequence = [sequence, temp(i)];
        temp(i) = [];
        result = generate_perm(sequence, result, temp);
        sequence(end) = [];
    end
end

function f = checkplate(s)
    flag = 1;
    allnumber = 1;
    allletter = 1;
    for i = 1 : 5
        if (s(i) >= '0') && (s(i) <= '9')
            allletter = 0;
        elseif (s(i) >= 'A') && (s(i) <= 'Z')
            allnumber = 0;
        end
    end
    if (allnumber == 1) || (allnumber == 1)
        flag = 0;
    end
    
    f = flag;
end
    