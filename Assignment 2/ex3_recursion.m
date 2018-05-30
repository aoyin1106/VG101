function number2=ex3_recursion(n,step)
dic={'',' million ',' thousand '};
    if n<1000
        number2=[combine(n)];
    else
    %     count=floor(log10(n)/3)+1;%this buffer can be only 1,2,3, which decide the time of recursion function
    %     finalread_recursion(n/1000,step+1)
    %     if logical(combine(n-floor(n/1000)*1000))==0
    %         count=1;
    %     end
        if n>=1000&n<1000000&(n-floor(n/1000)*1000)>0&(n-floor(n/1000)*1000)<100
            number2=[ex3_recursion(floor(n/1000),step+1),dic{4-step},' and ',combine(n-floor(n/1000)*1000)];
        else
        number2=[ex3_recursion(floor(n/1000),step+1),dic{4-step},combine(n-floor(n/1000)*1000)];
        end
    end
end

function num=read(m)
switch m
    case 0
        num ='';
    case 1
        num =' one';
    case 2
        num =' two';
    case 3
        num =' three';
    case 4
        num =' four';
    case 5
        num =' five';
    case 6
        num =' six';
    case 7
        num =' seven';
    case 8
        num =' eight';
    case 9
        num=' nine';
    case 10
        num=' ten';
    case 11
        num='eleven';
    case 12
        num='twelve';
    case 13
        num='thirteen';
    case 14
        num='fourteen';
    case 15
        num='fifteen';
    case 16
        num='sixteen';
    case 17
        num='seventeen';
    case 18
        num='eighteen';
    case 19
        num='nineteen';
    case 20
        num='twenty';
    case 30
        num='thirty';
    case 40
        num='forty';
    case 50
        num='fifty';
    case 60
        num='sixty';
    case 70
        num='seventy';
    case 80
        num='eighty';
    case 90
        num='ninty';
end
end

function word3=combine(x)
if x==0
    word3='';
else
x=num2str(x);
if str2num(x)>100
    num1=str2num(x(1));
    num2=str2num(x(2))*10;
    num3=str2num(x(3));
        if  num2==10
            word3=[read(num1),' hundred',' and ',read(num2+num3)];
        else
            word3=[read(num1),' hundred',' and ',read(num2),read(num3)];
        end
elseif str2num(x)==100
    word3=['one hundred'];
elseif str2num(x)<100&str2num(x)>19
    num1=str2num(x(1))*10;
    num2=str2num(x(2));
    word3=[read(num1),read(num2)];
elseif str2num(x)<20&str2num(x)>9
    num1=str2num(x(1))*10;
    num2=str2num(x(2));
    word3=[read(num1+num2)];
else
    num=str2num(x);
    word3=[read(num)];
end
end
end


% function number1=finalread_not_recursion(n)
% n1=floor(n/1000000);
% n2=floor(n/1000)-n1*1000;
% n3=n-n1*1000000-n2*1000
% if n1==0&n2~=0
%     if n3>99
%     number1=[combine(n2),' thousand ',combine(n3)];
%     else
%         number1=[combine(n2),' thousand and ',combine(n3)];
%     end
% elseif n1==0&n2==0
%     number1=[combine(n)]
% elseif n==0
%     number1=[' zero '];
% elseif n1~=0&&n2==0&n3==0
%     number1=[combine(n1),' million '];
% elseif n1~=0&&n2==0&n3>=100
%     number1=[combine(n1),' million ',combine(n3)];
% elseif n1~=0&&n2==0&n3<100
%     number1=[combine(n1),' million ','and ',combine(n3)];
% elseif n1~=0&&n2~=0&n3>=100
%     number1=[combine(n1),' million ',combine(n2),'thousand ',combine(n3)];
% elseif n1~=0&&n2~=0&n3<100
%     number1=[combine(n1),' million ',combine(n2),'thousand and ',combine(n3)];
% end
% end



        