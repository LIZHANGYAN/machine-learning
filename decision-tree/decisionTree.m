%% createDataSet
clear;
clc;
[dataSet,state] = createDataSet();
dataSet = string(lenses);
state=["age","prescript","astigmatic","tearRate"];
%%
shannonEnt = calcShannonEnt(dataSet);
%%
retDataSet = splitDataSet(dataSet,1,"1");
disp(retDataSet);

%% 
bestFeature = chooseBestFeatureToSplit(dataSet);
disp(bestFeature);
disp(dataSet);

%%
myTree = createTree(dataSet,state,0);
disp(myTree);
