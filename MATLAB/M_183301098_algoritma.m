clc
clear

A = [3  2 -1;
     0  1  -1;
     2  1  -1];
 
X = [9;4;2];
 
for(i = 1:length(A))
    Z = A;
    Z(1:end,i) = X;
    sonuc(i) = det(Z)/det(A);
end
sonuc