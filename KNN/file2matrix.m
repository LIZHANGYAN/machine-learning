function [dataSet,labels] = file2matrix(filename)
fileID = fopen(filename);
a = textscan(fileID,'%f%f%f%s');
dataSet = [a{1},a{2},a{3}];
labels = string(a{4});
fclose(fileID);
end