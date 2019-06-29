function angle = getIntersectAngle(t1,t2)

angle = abs(t1-t2);
angle = min(angle,2*pi-angle);

end