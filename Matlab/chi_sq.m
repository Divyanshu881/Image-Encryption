PLAIN= imread('/Users/divyanshusharma/tensorflow-test/EncryptedImage/Encrypted_lena.png');
[r c DIM]=size(PLAIN);
MAX_FQ=(r*c)/256;
if DIM>1
    [RED b]=imhist(PLAIN);
    [GREEN b]=imhist(PLAIN(:,:,2));
    [BLUE b]=imhist(PLAIN(:,:,3));
    
    REDX=((RED-MAX_FQ).^2)/MAX_FQ;
    GREENX=((GREEN-MAX_FQ).^2)/MAX_FQ;
    BLUEX=((BLUE-MAX_FQ).^2)/MAX_FQ;
    X1=sum(REDX)
    X2=sum(GREENX)
    X3=sum(BLUEX)
    avg=(X1+X2+X3)/3    
 else
   [a1 b1]=imhist(PLAIN);
   X1=((a1-MAX_FQ).^2)/MAX_FQ;
   X1=sum(X1)    
end