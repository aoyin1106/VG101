% This function is used to generate permutations.
% Input: A string s, and an integer n.
% Output: An array of strings including n permutations of chars in s.

% This function actually fails to use RECURSION.
% Details will be explained in README file.

function result = p1_ex2_1b(s, n)   
    result = [];
    sequence = '';
    
    i = 1;
    while i <= n
        temp = generate_perm(sequence, [], s);
        for j = 1 : i - 1
            if strcmp(temp, result(j,:))
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
