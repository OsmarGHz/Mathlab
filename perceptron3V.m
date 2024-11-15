function perceptron3V
%Realizar el or de tres variables
X = [0 0 0; 0 0 1; 0 1 0; 0 1 1; 1 0 0; 1 0 1; 1 1 0; 1 1 1]';
T = [0 1 1 1 1 1 1 1];
%Grafica los puntos y pone + en 1 de T y circulito en 0 de T
plotpv(X,T);
%Se crea el perceptron
rn = perceptron
%Se entrena a la red neuronal
rn = train(rn,X,T)
view(rn)
%Visualizamos los pesos y umbral encontrados
rn.IW{1,1}
rn.b{1}
%Grafica la línea de separación
plotpc(rn.IW{1},rn.b{1});