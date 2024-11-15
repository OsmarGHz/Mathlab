clear all
X = -5:.1:5; % X = [-5 -4.9 -4.8 .... 4.9 5]
Y = -5:.1:5;
[Xa,Ya] = ndgrid(X,Y);
Za = exp(-(Xa.^2+Ya.^2)/2);
% mesh(Xa,Ya,Za);
surf(Xa,Ya,Za);