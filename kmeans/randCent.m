function centroids = randCent(dataSet,k)
[~,n] = size(dataSet);
centroids = zeros(k,n);
for i=1:n
   minI = min(dataSet(:,i));
   rangeI = max(dataSet(:,i)) - minI;
   centroids(:,i) = minI + rangeI*rand(k,1);
end
end