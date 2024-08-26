clear; close all; clc;
%addpath('./tools/lz_tools');

workpath = './Test/';
savepath = './Test-SDTE/';
file_name = dir(fullfile(workpath,'*.png' ));
tic;
for num = 1: length(file_name)
    tmp_name = file_name(num).name;
    im_name = [workpath,file_name(num).name];
    image = im2double(imread(im_name));
    resultDeh = dehaze_lzq(image);  
    resultSDTE = ColorRestoration_new(resultDeh); 
    im_name_out = [savepath,tmp_name(1:end-4),'',tmp_name(end-3:end)];
    imwrite(resultSDTE,im_name_out);
    disp(num);
 end
toc;




















































































































