function plot_kmeans(dataSet,centroids,clusterAssment)
marker = ['o','d','^','s','>','<','p','h','v'];
figure;
hold on;
for i=1:size(centroids,1)
    indexs = find(clusterAssment(:,1) == i);
    subData = dataSet(indexs,:);
    plot(subData(:,1),subData(:,2),marker(i));
    plot(centroids(i,1),centroids(i,2),'r+');
    hold on;
end
end