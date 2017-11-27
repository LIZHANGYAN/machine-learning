function [centroids, clusterAssment] = kMeans(dataSet,k)
m = size(dataSet,1);
clusterAssment = zeros(m,2);
centroids = randCent(dataSet,k);
clusterChanged = true;
clusterAssment(:,1) = 1;
clusterAssment(:,2) = [];
temp = zeros(m,2);
while clusterChanged
    clusterChanged = false;
    temp(:,1) = 1;
    temp(:,2) = distEclud(dataSet,repmat(centroids(1,:),m,1));
    %     temp = clusterAssment;
    for i=2:k
        centers = repmat(centroids(i,:),m,1);
        diff = distEclud(dataSet,centers);
        
        compete = diff < temp(:,2);
        indexs = find(compete == 1);
        temp(indexs,1) = i;
        temp(indexs,2) = diff(indexs);
    end
    if ~isequal(temp(:,1),clusterAssment(:,1))
        clusterChanged = true;
    end
    clusterAssment = temp;
    disp(centroids);
    for cent=1:k
        indexs = clusterAssment(:,1) == cent;
        subdata = dataSet(indexs,:);
        centroids(cent,:) = mean(subdata);
    end
end

end