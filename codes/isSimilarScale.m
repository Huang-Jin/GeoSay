function flag = isSimilarScale(j1,j2)
    flag = false;
    thresh = 3;
    
    ratio = min(j1.scale)/min(j2.scale);
    if ratio>thresh || ratio<(1/thresh)
        flag = true;
    end
end