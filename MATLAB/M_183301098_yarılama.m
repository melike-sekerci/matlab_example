clc;
clear;
fonksiyon =@(x) x.^3 + 5*x.^2 + 2*x-10;

at=1; %alt deðer
ut=3; %ust deðer
hata=1e-3;

maksit=50;

for i=1:maksit
    if fonksiyon(at)*fonksiyon(ut)<0
       D=(at+ut)/2;
        if fonksiyon(D)*fonksiyon(ut)<0
            at=D;
        else
            ut=D;
        end
            x(i)=D;
            fx(i)=fonksiyon(D);

            er(i)=ut-at;
            
            if(i>1) && (abs(er(i)-er(i-1))<hata)
                break
            end
    end
end
    
    iter=1:1:i;
    x=x(1,1:i);
    fx=fx(1,1:i);
            
        table=[iter;x;fx;er];
fprintf('\n\n   \t\tx \t\t\t\tf(x) \t\t\t\tKök Aralýðý\n')
fprintf('%2.0f \t\t%2.3f \t\t\t%2.3f \t\t\t\t%2.3f \n',table)