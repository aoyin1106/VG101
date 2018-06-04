function Ex6(n)
    f1 = fopen('Ex6_Output.txt','w');
    for i = 1 : n
        for j = 1 : n - i
            fprintf(f1,'    ');
        end
        tmp = diag(rot90(pascal(i)));
        for j = 1 : i
            fprintf(f1,'%8d', tmp(j));
        end
        fprintf(f1,'\r\n');
    end
    fclose(f1);
end