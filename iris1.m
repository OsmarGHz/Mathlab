load iris.txt
X=iris(:,1:3)'
t=iris(:,4)'
RN1 = newff(minmax(X),[5,5,1,1],{'logsig','logsig','logsig','purelin'},'trainlm');
RNE = train(RN1,X,t);
y=sim(RNE,X)
y=round(y)