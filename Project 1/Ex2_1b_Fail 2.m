s = input('Input a set of elements (digits or letters): ','s');
n = input('Input the size of the random subset of permutations: ');
elements = strsplit(s);
m = size(elements, 2);
perm(1, m, elements, n);

function n_return = perm(k, m, elements, n)
    if n <= 0
        n_return = -1;
        return;
    end
    if k == m
        for i = 1 : m
            fprintf('%c',elements{i});
        end
        fprintf('\n');
        n_return = n - 1;
    else
        for i = (k - 1) + randperm(m - k + 1)
            temp        = elements{i};
            elements{i} = elements{k};
            elements{k} = temp;
            n = perm(k + 1, m, elements, n);
            temp        = elements{i};
            elements{i} = elements{k};
            elements{k} = temp;
        end
        n_return = n;
    end
end
