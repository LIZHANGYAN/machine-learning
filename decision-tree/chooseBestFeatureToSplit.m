function bestFeature = chooseBestFeatureToSplit(dataSet)
numFeatures = size(dataSet,2)-1;
baseEntropy = calcShannonEnt(dataSet);
bestInfoGain = 0.0;
bestFeature = 0;

for i=1:numFeatures
    newEntropy = 0.0;
    featurei = dataSet(:,i);
    featurei_unique = unique(featurei);
    for j=1:size(featurei_unique,1)
        subDataSet = splitDataSet(dataSet,i,featurei_unique(j));
%         disp(subDataSet);
        prob = size(subDataSet,1)/size(dataSet,1);
        newEntropy = newEntropy + prob*calcShannonEnt(subDataSet);
    end
%     fprintf('i=%d, newEntropy = %f\n',i,newEntropy);
    infoGain = baseEntropy - newEntropy;
    if infoGain > bestInfoGain
        bestInfoGain = infoGain;
        bestFeature = i;
    end
end
end