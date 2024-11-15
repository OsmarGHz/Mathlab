I = imread('cameraman.tif');
h = [1 1 1;1 -8 1;1 1 1]';
I = double(I);
R = conv2(I,h);
figure(1)
subplot(1,2,1)
imshow(uint8(I))
subplot(1,2,2)
imshow(uint8(R))