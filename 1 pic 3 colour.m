A = imread('Abdul Raffay.jpg');
one3rd = round(size(rgb2gray(A),2)/3);
one2nd = one3rd * 2;
gray = rgb2gray(A);
bw = im2bw(A);
for i = 1 : 3
    A(:,one3rd+1:one2nd,i) = gray(:,one3rd+1:one2nd);
end
for i = 1 : size(gray,1)
    for j = one2nd+1 : size(gray,2)
        for p = 1 : 3
            if bw(i,j) == 0
                A(i,j,p) = 0;
            else
                A(i,j,p) = 255;
            end
        end
    end
end
