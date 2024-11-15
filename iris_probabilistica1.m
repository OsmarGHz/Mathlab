%new = newpnn(X,t,valor);
%Valor > 0 cercano a cero clasificador lineal, probar con
%Diferentes numeros hasta encontrar un buen ajuste.

%Dar ejemplo. Ind2ved, vec2ind.
%Ind2vec(vector de 1 2 3)
%net = newpnn(X,t,valor);
%Vec2ind(regresa a vector)

function iris_probabilistica1
XA = load("iris.txt"); %Salidas 0, 1 y 2
[m,n] = size(XA); %150 x5
XA = XA';
X = XA(1:4,:);
t = XA(5,:)
t = t+1; %En caso de tener t=0,1 ó 2; Si se asignó 1,2,3 no se coloca esta linea
%Generamos la estructura
tt = ind2vec(t);
RN = newpnn(X,tt,1); %Probar con valores diferentes a 1
Ya = sim(RN,X)
Y = vec2ind(Ya)