function sortClassType=classify0(inX,dataSet,labels,k)
dataSetSize = length(labels);
diffMat = repmat(inX,dataSetSize,1) - dataSet;
sqDiffMat = diffMat.^2;
sqDistances = sum(sqDiffMat,2);
distances = sqrt(sqDistances);

labels_unique = unique(labels);
labels_count = zeros(size(labels_unique));

for i=1:k
   [~,index] = min(distances);
   distances(index) = Inf;
   index_count = find(labels_unique == labels(index));
   count = labels_count(index_count);
   count = count+1;
   labels_count(index_count) = count;
end
[~,index_max] = max(labels_count);
sortClassType = labels_unique(index_max);

% for i=1:dataSetSize
%    sortClassCount.(char(labels(i))) = 0; 
% end
% 
% for i=1:k
%     [~,index] = min(distances);
%     distances(index) = Inf;
%     count = sortClassCount.(char(labels(index)));
%     count = count+1;
%     sortClassCount.(char(labels(index))) = count;
% end
% className = fieldnames(sortClassCount);
% maxCount = sortClassCount.(char(className{1}));
% maxIndex = 1;
% for i=2:length(className)
%     count = sortClassCount.(char(className{i}));
%     if count>maxCount
%        maxCount=count; 
%        maxIndex = i;
%     end
% end
% sortClassType = className{maxIndex};
end