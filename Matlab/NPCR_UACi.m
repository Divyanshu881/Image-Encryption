
ChiperImg=imread('/Users/divyanshusharma/tensorflow-test/EncryptedImage/Encrypted_bunglow.png');
ChiperImg1bit=imread('/Users/divyanshusharma/tensorflow-test/Encrypted_bunglow1.png');
f1 = double(ChiperImg);
f2 = double(ChiperImg1bit);
[M, N] = size(f1);
%% NPCR

d = 0.000000;
for i = 1 : M
    for j = 1 : N
        if f1(i, j) ~= f2(i, j)         
           d = d + 1;
        end
    end
end
display("NPCR");
npcr = d / (M * N)

%% UACI
c = 0.000000;
for i = 1 : M * N
     c = c + abs( double( f1(i)) - double( f2(i)));
end
display("UACI");
uaci = c / (255 * M * N)