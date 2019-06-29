function cdis = calDisMat(Jlist)

cpts = getCenter(Jlist);

n = length(Jlist);

cx = cpts(:,1);
cy = cpts(:,2);

xdis = repmat(cx,1,n)-repmat(cx',n,1);
ydis = repmat(cy,1,n)-repmat(cy',n,1);

cdis = xdis.^2+ydis.^2;

end