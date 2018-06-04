function p1_light(m,w)
    r = 0.2 * w;
    if m == 1
        rectangle('Position',[ w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
        rectangle('Position',[-w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
        rectangle('Position',[-w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
        rectangle('Position',[ w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
    elseif m == 2 || m == 4
        rectangle('Position',[ w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
        rectangle('Position',[-w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
        rectangle('Position',[-w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
        rectangle('Position',[ w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','y');
    elseif m == 3
        rectangle('Position',[ w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
        rectangle('Position',[-w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','r');
        rectangle('Position',[-w-r, w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
        rectangle('Position',[ w-r,-w-r,2*r,2*r],'Curvature',[1,1],'facecolor','g');
    end
end