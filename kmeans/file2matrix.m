function dataSet = file2matrix(filename)
fileID = fopen(filename);
content = textscan(fileID,'%f%f');
dataSet = [content{:}];
fclose(fileID);
end