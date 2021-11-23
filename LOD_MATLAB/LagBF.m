function z=LagBF(x,y,i,H,n)
 if mod(i,n)~=0
    q_i=floor(i/n)+1;
 else
    q_i=i/n;
 end
 p_i=i-(q_i-1)*n;
 xi=p_i*H;yi=q_i*H;
 
 %Nxir = (x - (xi + H))/(xi - (xi + H));
 %Nxil = (x - (xi - H))/(xi - (xi - H));
 %Nyir = (y - (yi + H))/(yi - (yi + H));
 %Nyil = (y - (yi - H))/(yi - (yi - H));
 
if x<=xi-H || x>=xi+H || y<=yi-H || y>=yi+H
    z=0;
    
elseif x>xi-H&&x<=xi&&y>yi-H&&y<=yi
    
    
    z = (x - (xi - H))/(xi - (xi - H))*(y - (yi - H))/(yi - (yi - H));
    
elseif x>xi&&x<xi+H&&y>yi-H&&y<=yi
    
    z=(x - (xi + H))/(xi - (xi + H))*(y - (yi - H))/(yi - (yi - H));
    
elseif x>xi-H&&x<=xi&&y>yi&&y<yi+H
    
    z=(x - (xi - H))/(xi - (xi - H))*(y - (yi + H))/(yi - (yi + H));
    
elseif x>xi&&x<xi+H&&y>yi&&y<yi+H
    z=(x - (xi + H))/(xi - (xi + H))*(y - (yi + H))/(yi - (yi + H));
else
    disp('case not considered LagBF')
    
end