% function classifyPerson()
resultList = ["not at all","in small doses","in large doses"];
percentTats = input('percentTats of time spent playing video games?');
ffMiles = input('frequent filer miles earned per year?');
iceCream = input('liters of ice cream consumed per year?');
[data,labels] = file2matrix('datingTestSet2.txt');
[normdata,range,minVal] = autoNorm(data);
testdata = [ffMiles,percentTats,iceCream];
testdata = (testdata-minVal)/range;
classifierResult = classify0(testdata,normdata,labels,3);
fprintf('You will probably like this person:%s\n',...
    resultList(str2num(char(classifierResult))));
% end
