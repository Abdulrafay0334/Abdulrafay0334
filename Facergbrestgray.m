A = imread('abdul rafay.jpg');
faceD = vision.CascadeObjectDetector('MergeThreshold',8);
boundry = step(faceD, A);
for i = 1 : size(boundry,1);
    crop{i} = imcrop(A, boundry(i,:));
end 
A = rgb2gray(A);
A = cat(3,A,A,A);
for i = 1 : size(crop,2)
    A(boundry(i,2):boundry(i,2)+boundry(i,4),boundry(i,1):boundry(i,1)+boundry(i,3),:) = crop{i};
end
