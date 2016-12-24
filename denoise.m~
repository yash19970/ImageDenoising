% Matlab Code for Image Noise Reduction using MedianFilter, and comparing them with desired image.
PSNR;
PSNRO = 0;
PSNRE = 0;
orimg = imread('sp.jpg');
distimg = imread('cameraman.jpg');

for v = 1:2:20
    b = medfilt2(orimg,[v v]);
    figure();
    subplot(1,1,1); imshow(b); title('Filtered Image is for odd mask:');
end

for v = 2:2:20
    c = medfilt2(orimg,[v v]);
    figure();
    subplot(1,1,1); imshow(c); title('Filtered Image is for even mask:');
end
%calculating PSNR.
orimg = double(orimg);
distimg = double(distimg);
[M N] = size(orimg);    

%for odd mask values;
for v =1:2:20
    orimg = medfilt2(orimg,[v v]);
    error = orimg - distimg;
    MSE = sum(sum(error.*error))/(M*N);
    if(MSE >0)
        PSNR = 10*log(255*255/MSE)/log(10);
    end
    if(PSNR > PSNRO)
        PSNRO = PSNR;
        masko = v;
    end
end
disp('PSNR value for Odd mask size is: ');
disp(PSNRO);
disp('Best Mask Size is: ');
disp(masko);


%for even mask values;
for v =2:2:20
    orimg = medfilt2(orimg,[v v]);
    error = orimg - distimg;
    MSE = sum(sum(error.*error))/(M*N);
    if(MSE >0)
        PSNR = 10*log(255*255/MSE)/log(10);
    end
    if(PSNR > PSNRE)
        PSNRE = PSNR;
        maske = v;
    end
end
disp('PSNR value for Even mask size is: ');
disp(PSNRE);
disp('Best Mask Size is: ');
disp(maske);
