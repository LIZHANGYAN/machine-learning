function imgVect=img2vector(filename)
fileID = fopen(filename);
a = textscan(fileID,'%s');
a = a{1};
num = size(a,1);
imgVect = char(a{:});
imgVect = imgVect(:)';
fclose(fileID);
end