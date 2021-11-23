function j=lf(i,s,r,p,q)
    
    if s==p
        if i==1
            j=1;
        elseif i==3
            j=2;
        elseif i==4
            j=3;
        else
            disp('value of i not valid')
            disp([s,r,i])
        end
    elseif r==q
        
        if i==1
            j=1;
        elseif i==2
            j=2;
        elseif i==4
            j=3;
        else
            disp('value of i not valid')
            disp([s,r,i])
        end
    else
        disp('l not defined for these values of s and p')
    end

end