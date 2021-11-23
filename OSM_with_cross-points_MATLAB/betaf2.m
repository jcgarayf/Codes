function y=betaf2(m,na,nb)
   zm=zf2(m,na,nb);
   b=linspace(0,1,1000);
   if zm>1
       for i=length(b):-1:1
           if abs(zm^b(i)*1)<=1
              y=1/2;
              break
           end
       end
   else
       y=1/2;
   end
end