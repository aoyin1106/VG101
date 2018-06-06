% This function is used to display the road onto the screen.
% Input: Status status (1 for green light on horizontal line, 2 for yellow and 3 for red), and road width w.

function p1_light(status,w)
    r = 0.2 * w;
    if status == 1
        rectangle('Position',[ w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
        rectangle('Position',[-w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
        rectangle('Position',[-w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
        rectangle('Position',[ w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
    elseif status == 2 || status == 4
        rectangle('Position',[ w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
        rectangle('Position',[-w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
        rectangle('Position',[-w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
        rectangle('Position',[ w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
    elseif status == 3
        rectangle('Position',[ w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
        rectangle('Position',[-w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
        rectangle('Position',[-w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
        rectangle('Position',[ w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
    end
end