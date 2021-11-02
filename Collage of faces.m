A = imread('raffay.jpg');
faceD = vision.cascadeobjectdetector('mergethreshold',10);
boundry = step(faceD, A);
for i = 1 : step (boundry,1)
    crop{i} = imcrop(A, boundry(i,:));
    crop{i} = imresize (crop{i}, [200 200]);
end
B = crop{i};
for i = 2 :size (boundry,1)
    B = [A,crop{i}];
end
imshow(B);
