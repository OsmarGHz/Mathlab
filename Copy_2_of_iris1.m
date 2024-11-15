load iris.txt
X=iris(:,1:3)'
t=iris(:,4)'
RN1=feedforwardnet([4,10,1], 'traincgf');
RN1.divideFcn = 'dividetrain';
RNF = train(RN1,X,t);
y=sim(RNF,X);
y=round(y)