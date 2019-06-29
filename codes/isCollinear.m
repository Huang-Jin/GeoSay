function flag = isCollinear(theta1,theta2)
    flag = false;
    
    t = pi/18;
	theta1 = normto2pi(theta1);
	theta2 = normto2pi(theta2);
    
    if abs(abs(theta1-theta2) - pi)<t
        flag = true;
    end
end