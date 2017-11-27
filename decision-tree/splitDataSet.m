function retDataSet = splitDataSet(dataSet, axis, value)
retDataSet = [];
for i=1:size(dataSet,1)
   if dataSet(i,axis) == value
       retDataSet = [retDataSet;dataSet(i,:)];
   end
end
retDataSet(:,axis) = [];
end