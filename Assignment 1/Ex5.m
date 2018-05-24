a=input('input the angle between two cities in degree: ');
l=input('input the distance between two cities in km: ');
c=l/a*360;
r=c/2/3.14
dis1=sprintf('The circumstance of the Earth is %.2f km',c);
disp(dis1);
dis2=sprintf('The radius of the Earth is %.2f km', r);
disp(dis2);
