I=load('iris.txt');
figure(1)
scatter3(I(1:50,1), I(1:50,2), I(1:50,3), 'r', 'filled');
hold on
scatter3(I(51:100,1), I(51:100,2), I(51:100,3), 'g','filled');
scatter3(I(101:150,1), I(101:150,2), I(101:150,3), 'b', 'filled');
xlabel('Coordenada X');
ylabel('Coordenada Y');
zlabel('Coordenada Z');