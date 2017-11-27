treeVec=[0 1 2 2 1 ];
treeplot(treeVec);
count=size(treeVec,2);
[x,y]=treelayout(treeVec);
x=x';
y=y';
name2=cellstr(num2str((1:count)'));
name1 = cellstr(["no surfacing1","flippers2","no3","yes4","no5"]');
text(x(:,1)-0.03,y(:,1),name1,'VerticalAlignment','bottom','HorizontalAlignment','right');
