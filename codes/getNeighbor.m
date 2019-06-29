function [Jlist] = getNeighbor(Jlist,dis)

    n = length(Jlist);
    for i=1:n
        junc = Jlist(i);
        thresh = max(junc.scale);
        
        mink=[];
        k=3;
        [st,index]=sort(dis(i,:));
        for j=2:length(index)
            if st(j)>thresh*thresh || length(mink)>=k
                break;
            end
            if(~isSimilarScale(Jlist(i),Jlist(index(j))))
                mink = [mink index(j)];
            end
        end
        
        Jlist(i).neighbor = mink;
    end
end