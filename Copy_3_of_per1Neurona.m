function per1Neurona
%Realizaremos la funcion
%Extendemos X
X=[4 1 2 3 2 3; 6 2 4 4 0 6; 5 7 8 1 1 8; 7 9 0 5 0 2];
t=[1 0 1 0 1 1];
RNUnaN = newff(minmax(X),[4, 2, 3, 1],{'logsig', 'logsig', 'logsig', 'logsig'},'trainlm');
%La funciond de activacion usada es la log sig
%El método de busqueda usado es traingd, que es descenso de gradiente
RNEntrenada = train(RNUnaN,X,t)
%Revisamos si nos da los resultados adecuados
Y = sim(RNEntrenada,X)