function x0 = Ex4_Iteration(f,interval,p)
    %input interval
    l = interval(1);   %left
    r = interval(2);   %right

    len = length(num2str(l));
    if l>=0 & l<1
        len = len-1;
    end

    %check interval
    if l >= r
        disp('It is not a legal interval.');
        return;
    elseif sign(f(l)) == sign(f(r))
        disp('It is not a legal function.');
        return;
    end


    %iteration
    t1 = l;
    t2 = r;
    x  = 0;
    while abs(f(x))>10^(-p)
        x = (t1 * f(t2) - t2 * f(t1)) / (f(t2) - f(t1));
        t1 = t2;
        t2 = x;
    end

    %output

    x0 = vpa(x,p+len);
end