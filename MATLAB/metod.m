clear 
clc
function[y]=fonksiyon(x)
y = (x^3) - (7*(x^2)) + (14*x)-6;
at=0; %alt tahmin
ut=1; %ust tahmin
hata=10^(-2); %hata degeri
a=0;


if (fonksiyon(at)*foksiyon(ut)<0)
   while (abs(ut-at)>hata) %mutlak de�er i�inde ust de�erden alt de�eri ��kar�r�z e�er hatadan b�y�k ise d�g�n�n i�ine girer.
       if (fonksiyon(at)*fonksiyon(ut)<=0) %alt tahmin * ust tahmin<0 ise bu aral�kta bir k�k var.
           D=(at+ut)/2; %ortalmas�n� al�yoruz.
           if fonksiyon(D)*fonksiyon(ut)<0 %ortalama*ust de�er<0 ise bu aral�kta bir k�k var.
             at=D;
           else
               ut=D;
           end
      
            hata=abs(ut-at)/2; %mutlak de�er
          a=a+1;
       
          elseif fonsiyon(at)*faksiyon(ut)>0
               disp('k�k yok')
        
        else
           if foksiyon(at)==0
  
            fprintf('k�k: %d\n',at);
           else
              fprintf('k�k: %d\n',ut);
           end
       end 
   end
    
end
  
end

   




           
       
    
