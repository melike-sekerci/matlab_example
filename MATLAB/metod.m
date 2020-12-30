clear 
clc
function[y]=fonksiyon(x)
y = (x^3) - (7*(x^2)) + (14*x)-6;
at=0; %alt tahmin
ut=1; %ust tahmin
hata=10^(-2); %hata degeri
a=0;


if (fonksiyon(at)*foksiyon(ut)<0)
   while (abs(ut-at)>hata) %mutlak deðer içinde ust deðerden alt deðeri çýkarýrýz eðer hatadan büyük ise dögünün içine girer.
       if (fonksiyon(at)*fonksiyon(ut)<=0) %alt tahmin * ust tahmin<0 ise bu aralýkta bir kök var.
           D=(at+ut)/2; %ortalmasýný alýyoruz.
           if fonksiyon(D)*fonksiyon(ut)<0 %ortalama*ust deðer<0 ise bu aralýkta bir kök var.
             at=D;
           else
               ut=D;
           end
      
            hata=abs(ut-at)/2; %mutlak deðer
          a=a+1;
       
          elseif fonsiyon(at)*faksiyon(ut)>0
               disp('kök yok')
        
        else
           if foksiyon(at)==0
  
            fprintf('kök: %d\n',at);
           else
              fprintf('kök: %d\n',ut);
           end
       end 
   end
    
end
  
end

   




           
       
    
