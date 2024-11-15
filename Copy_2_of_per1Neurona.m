function per1Neurona
%Realizaremos la funcion X=[0 0; 0 1; 1 0; 1 1] t=[0 1 1 0] con trainlm
%Extendemos X
X=[0 0 1;0 1 1; 1 0 1; 1 1 1]'; %Los datos deben ser columnas
t=[0 1 1 0];
RNUnaN = newff(minmax(X),[2,1],{'logsig','logsig'},'trainlm');
%La funciond de activacion usada es la log sig
%El método de busqueda usado es traingd, que es descenso de gradiente
RNEntrenada = train(RNUnaN,X,t)
%Revisamos si nos da los resultados adecuados
Y = sim(RNEntrenada,X)