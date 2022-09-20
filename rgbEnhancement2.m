function imgRet = rgbEnhancement2(img1,img2)

imgRet = img1(:,:,:);
[w,h,c]=size(imgRet);
for x=1:w
    for y=1:h
        imgRet(x,y)=(img1(x,y)-img2(x,y))*2;
    end
end
%imgRet = imcomplement(imgRet)

end