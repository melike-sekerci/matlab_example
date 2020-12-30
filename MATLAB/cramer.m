clear
clc
a=[2 1 -2;1 -2 1;1 3 -2]   
b=[0;5;-3]

for i=1:3
mi=a; 
mi(:,i)=b
c=(a(i,i)*a(2,2)*a(3,3))-(a(,3)*a(2,2)*a(3,1))
end
mi(:,i)/c