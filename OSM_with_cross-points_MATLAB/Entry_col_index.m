function j=Entry_col_index(s,r,i,k,kmax,p,q)
    
    %j=kmax*(i-1)+k+(s-1)*4*kmax+4*kmax*p*(r-1);
    
    if s==1&&r==1
        j=(i-2)*kmax+k;
    elseif (1<s)&&(s<p)&&r==1
        j=(3*(s-2)+i)*kmax+k;
    elseif s==p&&r==1
        j=(3*(p-2)+i-1)*kmax+k;
    elseif s==1&&(1<r)&&(r<q)
        j=(4+3*(p-2)+(6+4*(p-2))*(r-2)+(i-1))*kmax+k;
    elseif (1<s)&&(s<p)&&(1<r)&&(r<q)
        j=(4+3*(p-2)+(6+4*(p-2))*(r-2)+3+4*(s-2)+(i-1))*kmax+k;
    elseif s==p&&(1<r)&&(r<q)
        j=(4+3*(p-2)+(6+4*(p-2))*(r-2)+3+4*(p-2)+(lf(i,s,r,p,q)-1))*kmax+k;
    elseif s==1&&r==q
        j=(4+3*(p-2)+(6+4*(p-2))*(q-2)+(i-1))*kmax+k;
    elseif (1<s)&&(s<p)&&r==q
        j=(4+3*(p-2)+(6+4*(p-2))*(q-2)+2+3*(s-2)+(lf(i,s,r,p,q)-1))*kmax+k;
    elseif s==p&&r==q
        j=(4+3*(p-2)+(6+4*(p-2))*(q-2)+2+3*(p-2)+(i-1)/3)*kmax+k;
        %j=k + (1/3)*(-1 + i)*Kmax + kmax*(4 - 5*p - 2*q + 4*p*q);
    elseif p==3&&q==3&&s==2&&r==2
        j=10*kmax+(i-1)*kmax+k;
    elseif p==3&&q==3&&s==p&&(1<r)&&(r<q)
        j=14*kmax+(i-1)*kmax+k;    
    else
        disp('values of s or r not valid')
        disp([s,r])
        
    end

end