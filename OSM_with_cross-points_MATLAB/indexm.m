function v=indexm(s,r,i,p,q)

    if (2<s)&&(s<p-1)&&(2<r)&&(r<q-1)
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        else
            disp(i)
            disp('value of i not valid')
        end
        
    elseif s==1&&r==1
        if i==2
            v=3;
        elseif i==3
            v=2;
        end
    elseif s==2&&r==1&&p~=2
        if i==2
            v=3;
        elseif i==3
            v=[2,4];
        elseif i==4
            v=3;
        end
    elseif (2<s)&&(s<p-1)&&r==1
        if i==2
            v=3;
        elseif i==3
            v=[2,4];
        elseif i==4
            v=3;
        end
    elseif s==p-1&&r==1
        if i==2
            v=3;
        elseif i==3
            v=[2,4];
        elseif i==4
            v=3;
        end
    elseif s==p&&r==1
        if i==3
            v=4;
        elseif i==4
            v=3;
        end
    elseif s==1&&r==2&&q~=2
        if i==1
            v=2;
        elseif i==2
            v=[1,3];
        elseif i==3
            v=2;
        end
     elseif s==1&&(2<r)&&(r<q-1)
        if i==1
            v=2;
        elseif i==2
            v=[1,3];
        elseif i==3
            v=2;
        end   
     elseif s==1&&r==q-1
        if i==1
            v=2;
        elseif i==2
            v=[1,3];
        elseif i==3
            v=2;
        end 
     elseif s==1&&r==q
        if i==1
            v=2;
        elseif i==2
            v=1;
        end
    elseif s==2&&r==q&&p~=2
        if i==1
            v=[2,4];
        elseif i==2
            v=1;
        elseif i==4
            v=1;
        end
    elseif (2<s)&&(s<p-1)&&r==q
        if i==1
            v=[2,4];
        elseif i==2
            v=1;
        elseif i==4
            v=1;
        end
    elseif s==p-1&&r==q
        if i==1
            v=[2,4];
        elseif i==2
            v=1;
        elseif i==4
            v=1;
        end     
    elseif s==p&&r==q
        if i==1
            v=4;
        elseif i==4
            v=1;
        end
    elseif s==p&&r==q-1
        if i==1
            v=4;
        elseif i==3
            v=4;
        elseif i==4
            v=[1,3];
        end 
    elseif s==p&&(2<r)&&(r<q-1)
        if i==1
            v=4;
        elseif i==3
            v=4;
        elseif i==4
            v=[1,3];
        end
    elseif s==p&&r==2
        if i==1
            v=4;
        elseif i==3
            v=4;
        elseif i==4
            v=[1,3];
        end
    elseif s==2&&r==2
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end
   elseif s==2&&(2<r)&&(r<q-1)
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end
    elseif s==2&&r==q-1
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end        
    elseif (2<s)&&(s<p-1)&&r==q-1
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end
    elseif s==p-1&&r==q-1
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end   
     elseif s==p-1&&(2<r)&&(r<q-1)
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end
     elseif s==p-1&&r==2
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end
        
     elseif (2<s)&&(s<p-1)&&r==2
        if i==1
            v=[2,4];
        elseif i==2
            v=[1,3];
        elseif i==3
            v=[2,4];
        elseif i==4
            v=[1,3];
        end
    else
        disp('something is wrong in indexm, check r and s in if sentence')
    end

    

end
