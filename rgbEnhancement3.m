function imgRet = rgbEnhancement2(img1,img3)
img3(3,1,1)=255;
imgRet = img3(:,:,:);
[w,h,c]=size(imgRet);
for x=1:w
    for y=1:h
        data=img1(x,y);
        data=data*0.8;
        imgRet(x,y,1)= imgRet(x,y,1)-(data*2);
        imgRet(x,y,2)= imgRet(x,y,2)-(data*1);
        imgRet(x,y,3)= imgRet(x,y,3)-(data*1);

    end
end
%imgRet = imcomplement(imgRet);

end