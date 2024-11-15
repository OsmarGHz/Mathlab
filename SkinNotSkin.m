I=load("Skin_NonSkin.txt");
X=I(:,1:3)';
t=I(:,4)';
figure(5)
scatter3(I(1:50859,1),I(1:50859,2),I(1:50859,3),'r');
hold on
scatter3(I(50860:end,1),I(50860:end,2),I(50860:end,3),'b');
RN1=feedforwardnet([4,10,1], 'traincgf');
RN1.divideFcn = 'dividetrain';
RNF = train(RN1,X,t);
y=sim(RNF,X);
y=round(y)