function ptInd = getPolygonPts(pts)

    pts = ceil(pts);

    minx = min(pts(:,1));
    miny = min(pts(:,2));
    maxx = max(pts(:,1));
    maxy = max(pts(:,2));
    
    [dx,dy] = meshgrid(minx:maxx,miny:maxy);
    
    ptInd = inpolygon(dx(:),dy(:),pts(:,1),pts(:,2));
    
    ptInd = [dx(ptInd) dy(ptInd)];

end