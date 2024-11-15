I = imread('circles.png');
h = [1 -1]';

R = conv2(I,h);
figure(1)
subplot(1,2,1)
imshow(I)
subplot(1,2,2)
imshow(R)