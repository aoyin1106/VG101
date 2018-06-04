function Ex3(n)
    f1 = fopen('Ex3_Output.txt','w');
    for i = 0 : 10
        fprintf(f1, '%d x %2d = %d\r\n', n, i, n * i);
    end
    fclose(f1);
end