function day = Ex6_zeller(d,m,cy)
    y = mod(cy,100);
    c = floor(cy/100);
    if m == 1
        m = 11;
        y = y -1;
    elseif m == 2
        m = 12;
        y = y-1;
    else
        m = m-2;
    end
    month = {'March' 'April' 'May' 'June' 'July' 'August' 'September' 'October' 'November' 'December' 'January' 'February'};
    n = 1 + mod((d + floor((13*m-1)/5) + y + floor(y/4) + floor(c/4) -2*c),7);
    x = d + floor((13*m-1)/5) + y + floor(y/4) + floor(c/4) -2*c;
    
    date = {'Sunday' 'Monday' 'Tuesday' 'Wednesday' 'Thursday' 'Friday' 'Saturday'};
    day = date{n};
end