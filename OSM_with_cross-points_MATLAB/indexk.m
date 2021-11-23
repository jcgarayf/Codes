function v=indexk(s,r,i,p,q)

    if (2<s)&&(s<p-1)&&(2<r)&&(r<q-1)
        if i==1
            v=[1,3];
        elseif i==2
            v=[2,4];
        elseif i==3
            v=[1,3];
        elseif i==4
            v=[2,4];
        else
            disp(i)
            disp('value of i not valid')
        end
        
    elseif s==1&&r==1
        if i==2
            if p~=2
                v=[2,4];
            else
                v=4;
            end
        elseif i==3
            if q~=2
                v=[1,3];
            else
                v=1;
            end
        end
    elseif s==2&&r==1
        if i==2
            if p~=3&&q~=3
                v=[2,4];
            else
                v=4;
            end
        elseif i==3
            if q~=2
                v=[1,3];
            else
                v=1;
            end
        elseif i==4
            v=2;
        end
    elseif (2<s)&&(s<p-1)&&r==1
        if i==2
            v=[2,4];
        elseif i==3
            if q~=2
                v=[1,3];
            else
                v=1;
            end
        elseif i==4
            v=[2,4];
        end
    elseif s==p-1&&r==1
        if i==2
            v=4;
        elseif i==3
            if q~=2
                v=[1,3];
            else
                v=1;
            end
        elseif i==4
            v=[2,4];
        end
    elseif s==p&&r==1
        if i==3
            if q~=2
                v=[1,3];
            else
                v=1;
            end
        elseif i==4
            if p~=2
                v=[2,4];
            else
                v=2;
            end
        end
    elseif s==1&&r==2
        if i==1
            v=3;
        elseif i==2
            if p~=2
                v=[2,4];
            else
                v=4;
            end
        elseif i==3
            if p~=3&&q~=3
                v=[1,3];
            else
                v=1;
            end
        end
     elseif s==1&&(2<r)&&(r<q-1)
        if i==1
            v=[1,3];
        elseif i==2
            if p~=2
                v=[2,4];
            else
                v=4;
            end
        elseif i==3
            v=[1,3];
        end   
     elseif s==1&&r==q-1
        if i==1
            v=[1,3];
        elseif i==2
            if p~=2
                v=[2,4];
            else
                v=4;
            end
        elseif i==3
            v=1;
        end 
     elseif s==1&&r==q
        if i==1
            if q~=2
                v=[1,3];
            else
                v=3;
            end
        elseif i==2
            if p~=2
                v=[2,4];
            else
                v=4;
            end
        end
    elseif s==2&&r==q
        if i==1
            if q~=2
                v=[1,3];
            else
                v=3;
            end
        elseif i==2
            if p~=3&&q~=3
                v=[2,4];
            else
                v=4;
            end
        elseif i==4
            v=2;
        end
    elseif (2<s)&&(s<p-1)&&r==q
        if i==1
            if q~=2
                v=[1,3];
            else
                v=3;
            end
        elseif i==2
            v=[2,4];
        elseif i==4
            v=[2,4];
        end
    elseif s==p-1&&r==q
        if i==1
            if q~=2
                v=[1,3];
            else
                v=3;
            end
        elseif i==2
            v=4;
        elseif i==4
            v=[2,4];
        end     
    elseif s==p&&r==q
        if i==1
            if q~=2
                v=[1,3];
            else
                v=3;
            end
        elseif i==4
            if p~=2
                v=[2,4];
            else
                v=2;
            end
        end
    elseif s==p&&r==q-1
        if i==1
            v=[1,3];
        elseif i==3
            v=1;
        elseif i==4
            if p~=2
                v=[2,4];
            else
                v=2;
            end
        end 
    elseif s==p&&(2<r)&&(r<q-1)
        if i==1
            v=[1,3];
        elseif i==3
            v=[1,3];
        elseif i==4
             if p~=2
                v=[2,4];
            else
                v=2;
            end
        end
    elseif s==p&&r==2
        if i==1
            v=3;
        elseif i==3
            if p~=3&&q~=3
                v=[1,3];
            else
                v=1;
            end
        elseif i==4
             if p~=2
                v=[2,4];
            else
                v=2;
            end
        end
    elseif s==2&&r==2
        if i==1
            v=3;
        elseif i==2
            if p~=3&&q~=3
               v=[2,4];
            else
               v=4; 
            end
        elseif i==3
            if p~=3&&q~=3
            v=[1,3];
            else
                v=1;
            end
        elseif i==4
            v=2;
        end
   elseif s==2&&(2<r)&&(r<q-1)
        if i==1
            v=[1,3];
        elseif i==2
            v=[2,4];
        elseif i==3
            v=[1,3];
        elseif i==4
            v=2;
        end
    elseif s==2&&r==q-1
        if i==1
            v=[1,3];
        elseif i==2
            v=[2,4];
        elseif i==3
            v=1;
        elseif i==4
            v=2;
        end         
    elseif (2<s)&&(s<p-1)&&r==q-1
        if i==1
            v=[1,3];
        elseif i==2
            v=[2,4];
        elseif i==3
            v=1;
        elseif i==4
            v=[2,4];
        end
    elseif s==p-1&&r==q-1
        if i==1
            v=[1,3];
        elseif i==2
            v=4;
        elseif i==3
            v=1;
        elseif i==4
            v=[2,4];
        end     
     elseif s==p-1&&(2<r)&&(r<q-1)
        if i==1
            v=[1,3];
        elseif i==2
            v=4;
        elseif i==3
            v=[1,3];
        elseif i==4
            v=[2,4];
        end
     elseif s==p-1&&r==2
        if i==1
            v=3;
        elseif i==2
            v=4;
        elseif i==3
            v=[1,3];
        elseif i==4
            v=[2,4];
        end
        
     elseif (2<s)&&(s<p-1)&&r==2
        if i==1
            v=3;
        elseif i==2
            v=[2,4];
        elseif i==3
            v=[1,3];
        elseif i==4
            v=[2,4];
        end
    else
        disp('something is wrong in indexk, check r and s in if sentence')
    end

    

end
