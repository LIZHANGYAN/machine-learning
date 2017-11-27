function [dataSet,state] = file2data(filename)
fileID = fopen(filename,'r');
while ~feof(fileID)
   str = fgetl(fileID); 
   if ~isempty(str)
      replace(str,' ',','); 
   end
end
fclose(fileID);
end