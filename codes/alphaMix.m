function alpha = alphaMix(im, mask, opacity)

H=vision.AlphaBlender('Operation', 'Blend', 'OpacitySource', 'Input port');
rgb = ind2rgb(gray2ind(mask,255),jet(255));
rgb = uint8(rgb*255);
opacity_mat=ones(size(mask))*opacity;
opacity_mat(mask==0)=0;
alpha = uint8(step(H,double(im),double(rgb),opacity_mat));
end