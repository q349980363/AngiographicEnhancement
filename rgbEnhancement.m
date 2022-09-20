function imgRet = rgbEnhancement(img,n1, n2, n3)

imgRet = img(:,:,:);
[w,h,c]=size(imgRet);
for x=1:w
    for y=1:h
        imgRet(x,y,1)=imgRet(x,y,1)*n1;
        imgRet(x,y,2)=imgRet(x,y,2)*n2;
        imgRet(x,y,3)=imgRet(x,y,3)*n3;

    end
end


end