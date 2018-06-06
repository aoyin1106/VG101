% This function is used to generate permutations.
% Input: A string s.
% Output: An array of strings including all the permutations of chars in s.

function result = p1_ex2_1a(s)
    result = [];
    sequence = '';
    result = generate_perm(sequence, result, s);
end

function result = generate_perm(sequence, result, s)    % Algorithm: Similar to Depth-First Search
    if size(s, 2) == 0
        result = [result; sequence];
    else
        for i = 1 : size(s, 2)
            temp = s;
            sequence = [sequence, temp(i)];
            temp(i) = [];
            result = generate_perm(sequence, result, temp);
            sequence(end) = [];
        end
    end
end
