addpath(genpath('MSRA10K'));

%get all the file names
msraImgFileNames = dir(fullfile('dataset/MSRA10K/images/All','*.jpg'));
msraTruthFileNames = dir(fullfile('dataset/MSRA10K/groundTruth/All','*.mat'));

    imdir = [base_dir '/images/train/'];
    trnGtDir = [base_dir '/groundTruth/train/'];
    imgIds=dir(imdir); imgIds=imgIds([imgIds.bytes]>0);
    imgIds={imgIds.name}; ext=imgIds{1}(end-2:end);
    nImgs=length(imgIds); for i=1:nImgs, imgIds{i}=imgIds{i}(1:end-4); end
    image_list = imgIds;
    
for i=1:2000
    randomIndex = p(i);
    movefile(['dataset/MSRA10K/images/All/' msraImgFileNames(randomIndex).name], ['dataset/MSRA10K/images/test/' msraImgFileNames(randomIndex).name]);
    movefile(['dataset/MSRA10K/groundTruth/All/' msraTruthFileNames(randomIndex).name], ['dataset/MSRA10K/groundTruth/test/' msraTruthFileNames(randomIndex).name]);
end

for i=2001:5000
    randomIndex = p(i);
    movefile(['dataset/MSRA10K/images/All/' msraImgFileNames(randomIndex).name], ['dataset/MSRA10K/images/val/' msraImgFileNames(randomIndex).name]);
    movefile(['dataset/MSRA10K/groundTruth/All/' msraTruthFileNames(randomIndex).name], ['dataset/MSRA10K/groundTruth/val/' msraTruthFileNames(randomIndex).name]);
end

for i=5001:10000
    randomIndex = p(i);
    movefile(['dataset/MSRA10K/images/All/' msraImgFileNames(randomIndex).name], ['dataset/MSRA10K/images/train/' msraImgFileNames(randomIndex).name]);
    movefile(['dataset/MSRA10K/groundTruth/All/' msraTruthFileNames(randomIndex).name], ['dataset/MSRA10K/groundTruth/train/' msraTruthFileNames(randomIndex).name]);
end