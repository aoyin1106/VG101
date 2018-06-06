function Ex5(f,a,b,error)
    c = (a + b)/2;
    if sign(f(a)) == sign(f(b))
        disp('The function is not valid.');
    elseif abs(f(c))<abs(error)
        fprintf('the root is %f \n',c);
        return;
    else
        if sign(f(a)) ~= sign(f(c))
            b = c;
            Ex5(f,a,b,error);
        elseif sign(f(c)) ~= sign(f(b))
            a = c;
            Ex5(f,a,b,error)
        end
end