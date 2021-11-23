function I=indexi(s,r,p,q)

    if (1<s)&&(s<p)&&(1<r)&&(r<q)
        I=1:4;
    elseif s==1&&r==1
        I=[2,3];
    elseif r==1&&s<p
        I=[2,3,4];
    elseif s==p&&r==1
        I=[3,4];
    elseif s==1&&r<q
        I=[1,2,3];
    elseif s==1&&r==q
        I=[1,2];
    elseif s==p&&r<q
        I=[1,3,4];
    elseif s==p&&r==q
        I=[1,4];
    elseif (1<s)&&(s<p)&&(r==q)   
        I=[1,2,4];
    end

end