I = load("iris.txt");
X = I(:,1:3)';
t = I(:,4)';
RN = newrb(X,t);
y = sim(RN,X)
y = round(y)