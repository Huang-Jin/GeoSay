function Jlist = ASJDetection(im_file, asj_path)
    
    switch nargin
        case 1
            asj_path = './3rdparty/asj/ASJDetector.exe';
    end
    
    im_asj = [im_file,'.asj'];
    if exist(im_asj,'file')
        Jlist = readASJ(im_asj);
    else
        command = sprintf('%s %s',asj_path, im_file);
        system(command);
        Jlist = readASJ(im_asj);
    end
end