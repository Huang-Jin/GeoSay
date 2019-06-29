function gbi = gbindex(im_file,par)

im = imread(im_file);
im_asj = [im_file,'.asj'];

if ~exist(im_asj,'file')
	Jlist = ASJDetection(im_file, par.asj_path);
else
    Jlist = readASJ(im_asj);
end

if par.useNeighbor
    Jlist = calCenter(Jlist);           % compute the center of all junctions
    cdis = calDisMat(Jlist);            % calculate the distance matrix
    Jlist = getNeighbor(Jlist,cdis);    % find neighbors
end

if ~par.useNeighbor
    cdis = 0;
end

gbi = calGBI(Jlist,im,par,cdis);

if par.usebhat
    % black top-hat
    se=strel('square',50);
    bim = max(im,[],3);
    fo=imclose(bim,se);
    bth=imsubtract(fo,bim);
    
    bth = double(bth)./255;
    gbi = gbi.*(1-bth);
end

gbi = conv2(gbi,fspecial('gaussian',5,1),'same');

end