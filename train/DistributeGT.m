addpath(genpath('MSRA10K'));

base_dir = 'train/MSRA10K';
imdir = [base_dir '/images/val/'];
trnGtDir = [base_dir '/groundTruth/val/'];
imgIds=dir(imdir); imgIds=imgIds([imgIds.bytes]>0);
imgIds={imgIds.name}; ext=imgIds{1}(end-2:end);
nImgs=length(imgIds); for i=1:nImgs, imgIds{i}=imgIds{i}(1:end-4); end
image_list = imgIds;
    
for i=1:length(image_list)
    fullname = [image_list{i}, '.png'];
    movefile(['train/MSRA10K/truth-edges/All/' fullname], ['train/MSRA10K/truth-edges/val/' fullname]);
end