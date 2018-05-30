function x0 = Ex4_Recursion(f,interval,p)
    a = interval(1);
    b = interval(2);
    
    len = length(num2str(floor(a)));
    if a>=0 & a<1
        len = len-1;
    end
    
    %check interval
    if a >= b
        disp('It is not a legal interval.');
        return;
    elseif sign(f(a)) == sign(f(b))
        disp('It is not a legal function.');
        return;
    end
    
    i=1;
    
    while abs(f(rec2(i,a,b,f)))>10^(-p)
        i=i+1;
    end
    
    x0 = vpa(rec2(i,a,b,f),p+len);
    
end

function y=rec2(i,a,b,f)
    if i==1
        y=a;
    elseif i==2
        y=b;
    else 
        y=(rec2(i-2,a,b,f)*f(rec2(i-1,a,b,f))-rec2(i-1,a,b,f)*f(rec2(i-2,a,b,f)))/(f(rec2(i-1,a,b,f))-f(rec2(i-2,a,b,f)));
    end
end
