function result = classify(myTree, dataSet,state,testVec)
featLabels = unique(dataSet(:,end));
Node = myTree.Node;
nodes = {Node.fatherNodeName};
nodes = string(nodes)';
edges = {Node.EdgeProperty};
edges = string(edges)';
nodesname = {Node.NodeName};
nodesname = string(nodesname)';

nodeName = nodesname{1};
for i=1:length(state)
    index = state == nodeName;
    vecfeatu = testVec(index);
    indexs = ismember([nodes,edges],[nodeName,vecfeatu],'rows');
    nodeName = nodesname(indexs==1);
    disp(nodeName);
    if find(featLabels == nodeName) >0
        result = nodeName;
        return;
    end
    
end

end