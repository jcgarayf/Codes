function y=betaf(m,na,nb)
   zm=zf(m,na,nb);
   b=linspace(0,1,1000);
   if zm>1
       for i=length(b):-1:1
           if abs(zm^b(i)*sin(zm))<=1
              y=1/2;
              break
           end
       end
   else
       y=1/2;
   end

end