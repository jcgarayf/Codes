function z=newton2z(z0,na,nb)
%disp('Newton z0')
%disp(z0)
corr=1;
z=z0;
tol=1e-12;
l=0;
    while abs(corr)>tol||abs(f2(z,na,nb))>tol
           l=l+1;
           corr=f2(z,na,nb)/df2(z,na,nb);
           znew=z-corr;
           z=znew;
           %disp(z)
           %disp(abs(f2(z,na)))
            if(l>100)
               %disp('newton1z_returned')
            return;
           end
    end
    

end