function sortedClassCount = majorityCnt(dataSet)
labels = dataSet(:,end);
labels_unique = unique(labels);
labels_count = zeros(size(labels_unique));

for i=1:size(labels_unique,1)
    labels_count(i) = length(find(labels == labels_unique(i)));
end
[~,index] = max(labels_count);
sortedClassCount = labels_unique(index);
end