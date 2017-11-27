%% main

[group,labels] = createDataSet();


plot(group(:,1),group(:,2),'k*');
axis([min(group(:,1))-0.2,max(group(:,1))+0.2,...
    min(group(:,2))-0.2,max(group(:,2))+0.2]);
for i=1:length(labels)
    coor = group(i,:);
   text(coor(1)-0.05,coor(2),labels(i)); 
end

sortClassType = classify0([0,0],group,labels,3);
%% load datingTestSet.txt
[data,labels] = file2matrix('datingTestSet.txt');
data = autoNorm(data);

labelss = unique(labels);
for i=1:length(labelss)
   typei = find(labels==labelss(i));
   type = data(typei,1:2);
   plot(type(:,1),type(:,2),'k.','MarkerSize',22,'Color',[0,0.3*i,0.3*i]);
   hold on;
end
% plot(data(:,2),data(:,3),'k.','MarkerSize',22);
axis([min(data(:,1)-0.01), max(data(:,1))+0.01,min(data(:,2)-0.01),max(data(:,2))+0.01]);
xlabel('play video game');
ylabel('eat ice creame');

%% classification
datingClassTest();
%% 