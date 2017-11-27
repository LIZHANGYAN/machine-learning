function [normaldataset,range,minVal] = autoNorm(dataset)
maxVal = max(dataset,[],1);
minVal = min(dataset,[],1);
range = maxVal - minVal;
ranges = repmat(range,size(dataset,1),1);
minVals = repmat(minVal,size(dataset,1),1);
normaldataset = (dataset-minVals)./ranges;

end