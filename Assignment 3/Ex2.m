Jumpers(1).Color='Blue';
Jumpers(1).Quantity=2;
Jumpers(2).Color='Brown';
Jumpers(2).Quantity=3;
Jumpers(3).Color='Green';
Jumpers(3).Quantity=5;
Trousers(1).Color='Black';
Trousers(1).Quantity=3;
Trousers(2).Color='Grey';
Trousers(2).Quantity=2;
Trousers(3).Color='White';
Trousers(3).Quantity=1;
Tshirts(1).Color='Blue';
Tshirts(1).Quantity=1;
Tshirts(2).Color='Green';
Tshirts(2).Quantity=2;
Tshirts(3).Color='Red';
Tshirts(3).Quantity=3;
Tshirts(4).Color='White';
Tshirts(4).Quantity=2;
Tshirts(5).Color='Yellow';
Tshirts(5).Quantity=1;
[m,j]=max([Jumpers(1:3).Quantity]);
[n,i]=max([Trousers(1:3).Quantity]);
[k,l]=max([Tshirts(1:5).Quantity]);
w=max([m,n,k]);
fprintf('Largest quantity: %d\n', w)
if w==m
    fprintf('Type: Jumpers, Color: %s\n', Jumpers(j).Color);
elseif w==n
    fprintf('Type: Trousers, Color: %s\n', Trousers(i).Color);
elseif w==k
    fprintf('Type: Tshirts, Color: %s\n', Tshirts(l).Color);
end

averageyear=floor(2018.5-((2005+2013+2015+2012+2011+2013+2010+2014+2012+2008+2012)/11+4/12+2/12+1/12+6/12+4/12+12/12+5/12+9/12+1/12+3/12+11/12));
fprintf('Average years: %d\n', averageyear);
    

