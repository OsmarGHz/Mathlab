function fertilidad
I = load("fertility_Diagnosis.txt")
X = I(:,1:8)';
t = I(:,9)';
RN = newrb(X,t);
y = sim(RN,X);
y = round(y)

countError = 0;
%for i = 1:100

    
    