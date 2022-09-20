function imgRet = rgbEnhancement1(img,n1, n2, n3)

imgRet = img(:,:,:);
[w,h,c]=size(imgRet);
for x=1:w
    for y=1:h
        r=imgRet(x,y,1)*n1;
        g=imgRet(x,y,2)*n2;
        b=imgRet(x,y,3)*n3;
        %imgRet(x,y,1)=r;
        imgRet(x,y,1)=b;
        %imgRet(x,y,1)=g;
    end
end


end