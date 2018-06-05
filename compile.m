cd ./mex
mex -compatibleArrayDims mexFeatureDistance.cpp
mex -compatibleArrayDims mexLBP.cpp
cd ..

cd ./segmentation/segment
mex -compatibleArrayDims mexSegment.cpp
cd ../..

cd ./randomforest-matlab/RF_Reg_C
%mex -compatibleArrayDims src/cokus.cpp src/reg_RF.cpp src/mex_regressionRF_train.cpp   -DMATLAB -output mexRF_train
%mex -compatibleArrayDims src/cokus.cpp src/reg_RF.cpp src/mex_regressionRF_predict.cpp   -DMATLAB  -output mexRF_predict
cd ../..

cd ./multi-segmentation
mex -compatibleArrayDims mexMergeAdjRegs_Felzenszwalb.cpp 
%mex mexMergeAdjacentRegions.cpp
%mex mexMergeAdjacentRegions2.cpp
cd ..

cd ./randomforest-matlab\RF_Reg_C\compress
mex -compatibleArrayDims mexCharArray2DoubleArray.cpp
mex -compatibleArrayDims mexDoubleArray2CharArray.cpp