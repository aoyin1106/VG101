hold on;
%A simple house
plot([-10,-1],[0,0],'k','LineWidth',3);
plot([-10,-1],[5,5],'k','LineWidth',3);
plot([-10,-10],[0,5],'k','LineWidth',3);
plot([-1,-1],[0,5],'k','LineWidth',3);
plot([-10,-5.5],[5,8],'k','LineWidth',3);
plot([-1,-5.5],[5,8],'k','LineWidth',3);

%door
plot([-2,-2],[0,4],'b','LineWidth',2);
plot([-4,-4],[0,4],'b','LineWidth',2);
plot([-2,-4],[4,4],'b','LineWidth',2);

%window
plot([-9,-6],[4,4],'y','LineWidth',2);
plot([-9,-6],[2.5,2.5],'y','LineWidth',1.5);
plot([-9,-6],[1,1],'y','LineWidth',2);
plot([-9,-9],[1,4],'y','LineWidth',2);
plot([-7.5,-7.5],[1,4],'y','LineWidth',1.5);
plot([-6,-6],[1,4],'y','LineWidth',2);

%A car
rectangle('Position',[2,0,1,1],'Curvature',[1,1],'LineWidth',3,'edgecolor','r');
rectangle('Position',[8,0,1,1],'Curvature',[1,1],'LineWidth',3,'edgecolor','r');
plot([3,8],[0.5,0.5],'r','LineWidth',3);
plot([1,2],[0.5,0.5],'r','LineWidth',3);
plot([9,10],[0.5,0.5],'r','LineWidth',3);
plot([1,1.5],[0.5,1.5],'r','LineWidth',3);
plot([10,9.5],[0.5,1.5],'r','LineWidth',3);
plot([1.5,9.5],[1.5,1.5],'r','LineWidth',3);
x = 2:0.01:9;
y = sqrt(3.5^2-(x-5.5).^2)+1.5;
plot(x,y,'r','LineWidth',2);
plot([5.5,5.5],[1.5,5],'r','LineWidth',2);
hold off;