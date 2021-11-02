A = imread('abdul.jpg');
B = imread('raffay.jpg');
A = im2double(A);
B = im2double(B);
new = B - A;
iter = 40;
new = new ./ iter
for i = 1 : iter
    A = A + new;
    [im,map] = rgb2ind(A,256);
    if i == 1
        imwrite(im,map,'Animated.gif','DelayTime',0.01,'LoopCount',1);
    else
        imwrite(im,map,'animated.gif','DelayTime',0.01,'WriteMode','Append');
    end
end
