% This function is used to display the road onto the screen.
% Input: Road width w, and road length l.

function p1_drawroad(w,l) 
    hold on;
    plot([-l,-w],[ w, w],'k','LineWidth',3);
    plot([ w, l],[ w, w],'k','LineWidth',3);
    plot([-l,-w],[-w,-w],'k','LineWidth',3);
    plot([ w, l],[-w,-w],'k','LineWidth',3);
    plot([ w, w],[ w, l],'k','LineWidth',3);
    plot([ w, w],[-l,-w],'k','LineWidth',3);
    plot([-w,-w],[ w, l],'k','LineWidth',3);
    plot([-w,-w],[-l,-w],'k','LineWidth',3);
    
    plot([-l,-w],[ 0, 0],'--','Color',[0.8 0.8 0.8]);
    plot([ w, l],[ 0, 0],'--','Color',[0.8 0.8 0.8]);
    plot([ 0, 0],[-l,-w],'--','Color',[0.8 0.8 0.8]);
    plot([ 0, 0],[ w, l],'--','Color',[0.8 0.8 0.8]);

    hold off;
end