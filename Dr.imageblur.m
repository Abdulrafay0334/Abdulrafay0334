directory = dir('C:\Users\Arsal Latif\Desktop\Images\*.jpg');
if isfolder('C:\Users\Arsal Latif\Desktop\Images\output') == 0
    mkdir('C:\Users\Arsal Latif\Desktop\Images\output');
end
for i = 1 : size(directory,1)
    name = directory(i).name;
    name = strcat('C:\Users\Arsal Latif\Desktop\Images\',name);
    img{i} = imread(name);
    blur = fspecial('disk',10);
    img{i} = imfilter(img{i},blur);
end
for i = 1 : size(img,2)
    subplot(2,round(size(img,2)/2),i), imshow(img{i});
end
