imagesDR = dir('D:\Music\New folder\Newfolder\newfolder1\*.jpg');
for i=1:size(imagesDR,1)
    name = imagesDR(i).name;
    name = strcat('D:\Music\New folder\Newfolder\newfolder1\*.jpg', name);
    A{i} = imread(name);
    A{i} = imresize (A{i}, [200 200]);
end
image = image {1};
for i = 2: floor(size(A,2) / 2)
    image = [image,A{i}];
end
image2 = A(floor(size (A,2) /2 ) +1 );
for i= floor((size(A,2) / 2) + 2) : size(A,2)
    imgage2 = [image2,A{i}];
end
try
    Collage = [image;image2];
catch 
    difference = size (image,2)-size (image2,2);
    if difference < 0
    blank = unit8(zeros(size(image,1),abs(difference),3));
    image = [image,new];
    collage = [image;image2]
    else
    blank = unit8(zeros(size(image,1),abs(difference),3));
    image2 = [image2,new];
    collage = [image;image2];
    end
end
