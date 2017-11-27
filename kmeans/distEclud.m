function dist = distEclud(vecA,vecB)
dist = sqrt(sum((vecA-vecB).^2,2));
end