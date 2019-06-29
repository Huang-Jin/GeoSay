function index = getAreaIndex(junc,m,n)

pts = zeros(4,2);
pts(1,:) = junc.points(2,:);
pts(2,:) = junc.points(1,:);
pts(3,:) = junc.points(3,:);
pts(4,:) = pts(1,:)-pts(2,:)+pts(3,:);

ptAreaInd = getPolygonPts(pts);
ptAreaInd(ptAreaInd(:,1)<1 | ptAreaInd(:,2)<1 | ptAreaInd(:,2)>m | ptAreaInd(:,1)>n,:)=[];

index = sub2ind([m,n],ptAreaInd(:,2),ptAreaInd(:,1));
index = unique(index);

end