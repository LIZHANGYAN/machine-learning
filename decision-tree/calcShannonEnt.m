function shannonEnt = calcShannonEnt(dataSet)
numEntries = size(dataSet,1);
labels = dataSet(:,end);
labels_unique = unique(labels);
labels_count = zeros(size(labels_unique));
for i=1:numEntries
   index = find(labels_unique == labels(i));
   labels_count(index) = labels_count(index)+1;
end

num_unique = size(labels,1);

probs = labels_count/num_unique;
shannon = probs.*(log2(probs));

shannonEnt = -sum(sum(shannon));

end