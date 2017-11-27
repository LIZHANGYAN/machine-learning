function myTree = createTree(dataSet,state,best)

global Node;



Node = struct('fatherNodeName',[],'EdgeProperty',[],'NodeName',[]);
buildTree('root','LZY',dataSet,state);
Node(1) = [];
myTree.Node = Node;



end



% if length(unique(labels)) == 1
%     myTree = containers.Map;
%     myTree(char(best)) = labels(1);
%     %     second = labels(1);
%     return;
% end
% if size(features,2) == 1
%     myTree = containers.Map;
%     myTree(char(best)) = majorityCnt(dataSet);
%     return;
% end
% bestFeature = chooseBestFeatureToSplit(dataSet);
% bestState = state(bestFeature);
% myTree = containers.Map;
% myTree(char(bestState)) = containers.Map;
% state(bestFeature) = [];
% featureBest_unique = unique(features(:,bestFeature));
% for i=1:size(featureBest_unique,1)
%     substate = state;
%     temp = containers.Map;
%     temp(char(featureBest_unique(i))) = createTree(splitDataSet(dataSet,bestFeature,featureBest_unique(i)),...
%         substate,featureBest_unique(i));
%     myTree(char(bestState)) = temp;
% end
% end






