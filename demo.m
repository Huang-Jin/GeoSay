
addpath('./codes')

file_path = pwd;

im_file = './images/test.png';

par.usebhat = 1; % use black top-hat
par.stat = 1; % add the angle info
par.useNeighbor = 1; % use the neighboring info
par.asj_path = sprintf('%s%s', file_path, '/3rdparty/asj/ASJDetector.exe');

gbi = gbindex(im_file,par);
gbi = (gbi-min(gbi(:)))./(max(gbi(:))-min(gbi(:)));

im = imread(im_file);
im_gbi = alphaMix(im,gbi,0.5);

subplot(131); imshow(im); title('input image');
subplot(132); imshow(im_gbi); title('Geometric building index');
subplot(133); imshow(gbi>0.02); title('Segmented buidlings');