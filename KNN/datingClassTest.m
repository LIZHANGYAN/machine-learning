function datingClassTest()
    hoRatio = 0.2;
    [datingData,labels] = file2matrix('datingTestSet.txt');
    normData = autoNorm(datingData);
    testNum = floor(length(normData)*hoRatio);
    probe = normData(1:testNum,:);
    gallery = normData(testNum+1:end,:);
    probe_labels = labels(1:testNum);
    gallery_labels = labels(testNum+1:end);
    counterErrorNum = 0;
    for i=1:testNum
       classifierResult = classify0(probe(i,:),gallery, gallery_labels,3);
       fprintf('the classifier came back with:%s, the real answer is: %s\n',...
           classifierResult,probe_labels(i));
       if classifierResult~=probe_labels(i)
           counterErrorNum = counterErrorNum+1;
       end
    end
    fprintf('the total error rate is:%f\n',counterErrorNum/testNum);
end