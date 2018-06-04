s = input('Input a set of elements (digits or letters): ','s');
elements = strsplit(s);
m = size(elements, 2);
perm(1, m, elements);

function perm(k, m, elements)
    if k == m
        for i = 1 : m
            fprintf('%c',elements{i});
        end
        fprintf('\n');
    else
        for i = k : m
            temp        = elements{i};
            elements{i} = elements{k};
            elements{k} = temp;
            perm(k + 1, m, elements);
            temp        = elements{i};
            elements{i} = elements{k};
            elements{k} = temp;
        end
    end
end
