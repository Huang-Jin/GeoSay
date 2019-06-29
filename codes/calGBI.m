function gbi = calGBI(jlist,im,par,cdis)
    
    [m,n,~]=size(im);
    gbi = zeros(m,n);
    
    for i=1:length(jlist)
        junc = jlist(i);
        
        nfa = junc.logNFA;
        mscale = min(junc.scale);
        mscale = mscale * mscale;

        % get the rectangular areas that junction covered 
        ptAreaInd = getAreaIndex(junc,m,n);

        % add the info about angle
        gamma1 = calAngleProb(junc,par.stat);
        factor = gamma1*(1-exp(nfa));
        
        if par.useNeighbor
            neighbor = junc.neighbor;
            for j=1:length(neighbor)
                neiInd = neighbor(j);
                jnei = jlist(neiInd);
                gamma2 = calAngleProb(jnei,par.stat);
                factor = factor + exp(-sqrt(cdis(neiInd,i)/mscale))*gamma2*(1-exp(jnei.logNFA));
            end
        end
        
        gbi(ptAreaInd) = gbi(ptAreaInd)+factor;
    end
end