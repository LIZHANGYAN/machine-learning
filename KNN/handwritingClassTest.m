% function handwritingClassTest()
testfilepath = 'digits/testDigits';
trainfilepath = 'digits/trainingDigits';
testFiles = list_files('digits/testDigits');
trainFiles = list_files('digits/trainingDigits');
testVector = [];
trainVector = [];
testLabels = [];
trainLabels = [];
for i=1:size(testFiles,2)
    filepath = [testfilepath, filesep,testFiles{i}];
    digitVec = img2vector(filepath);
    testVector = [testVector;digitVec];
    digital_name = split(testFiles{i},'_');
    testLabels = [testLabels;str2double(digital_name{1})];
end

for i=1:size(trainFiles,2)
    filepath = [trainfilepath, filesep,trainFiles{i}];
    digitVec = img2vector(filepath);
    trainVector = [trainVector;digitVec];
    digital_name = split(trainFiles{i},'_');
    trainLabels = [trainLabels;str2double(digital_name{1})];
end
%% classification
errorCount = 0;
mTest = size(testLabels,1);
for i=1:mTest
    result = classify0(testVector(i,:), trainVector, trainLabels, 3);
    if result ~= testLabels(i)
        errorCount = errorCount+1;
    end
    fprintf('the classifier came back with: %d, the real answer is: %d\n',...
        result,testLabels(i));
end
fprintf('the total number of errors is: %d\n',errorCount);
fprintf('the total error rate is: %f\n', errorCount/mTest);

% end