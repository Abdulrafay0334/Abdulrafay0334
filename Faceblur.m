A = imread('raffay.jpg');
faceD = vision.CascadeObjectDetector();
faceD.MergeThreshold = 10;
boundry = step(faceD, A);
blur = fspecial('disk',10);
for i = 1 : size(boundry,1)
    crop = imcrop(A,boundry(i,:));
    crop = imfilter(crop,blur);
    A(boundry(i,2):boundry(i,2)+boundry(i,4),boundry(i,1):boundry(i,1)+boundry(i,3),:) = crop;
end
