function buildTree(fatherNodeName,edge,dataSet,state)
global Node;
features = dataSet(:,1:end-1);
label = dataSet(:,end);

sonNode = struct('fatherNodeName',[],'EdgeProperty',[],'NodeName',[]);
sonNode.fatherNodeName = fatherNodeName;
sonNode.EdgeProperty = edge;
if length(unique(label)) == 1
    % denotes the class is same
    % stop the splitted
    sonNode.NodeName = label(1);
    Node = [Node sonNode];
    return;
end
if length(state) < 1
   sonNode.NodeName = majorityCnt(dataSet);
   Node = [Node sonNode];
   return;
end
bestFeature = chooseBestFeatureToSplit(dataSet);

bestState = state(bestFeature);
sonNode.NodeName = bestState;
Node = [Node sonNode];
state(bestFeature) = [];
sonData = features(:,bestFeature);
sonEdge = unique(sonData);
for i=1:length(sonEdge)
    subData = splitDataSet(dataSet,bestFeature,sonEdge(i));
    fprintf('bestFeature=%d\n',bestFeature);
    fprintf('bestState=%s\n',bestState);
    
    disp('bestSubdata');
    disp(state);
    disp(subData);
    buildTree(sonNode.NodeName,sonEdge(i),subData,state);
end
end