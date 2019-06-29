function Jlist = readASJ(filename)
    fid = fopen(filename,'r');
    
    n = fscanf(fid,'%d',[1 1]);
    fprintf('%d junctions are going to be read\n',n);
    
    for i = 1 : n
        location = fscanf(fid,'%f',[1 2]);
        Jlist(i).location = location+1;
        tmp = fscanf(fid,'%f',[1 4]);
        Jlist(i).class = tmp(1);
        Jlist(i).scaleGlobal = tmp(2);
        Jlist(i).rd = tmp(3);
        Jlist(i).logNFA = tmp(4);
        tmp = fscanf(fid,'%f',[3 Jlist(i).class]);
        tmp = tmp';
        Jlist(i).theta = tmp(:,1)';
        Jlist(i).strength = tmp(:,2)';
        Jlist(i).scale = tmp(:,3)';
        points = [cos(tmp(:,1)).*tmp(:,3),sin(tmp(:,1)).*tmp(:,3)];
        points = points + repmat(location,Jlist(i).class,1);
        Jlist(i).points = [location;points];
    end
    fclose(fid);
end