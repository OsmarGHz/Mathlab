load iris.txt
X=iris(:,1:3)'
t=iris(:,4)'
RN1 = newff(minmax(X),[4,2,1],{'logsig','logsig','purelin'},'traincgf');
RNF = train(RN1,X,t);
y=sim(RNF,X);
y=round(y)