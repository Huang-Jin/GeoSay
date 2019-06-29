function prob = calAngleProb(junc,stat)

if stat == 0
    prob = 1;
else
    bdProb = load('bdProb.mat');
    angle = getIntersectAngle(junc.theta(1),junc.theta(2));
    prob = bdProb.yy(floor(angle/pi*1000)+1);
end
