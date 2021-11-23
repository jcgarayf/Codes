function z=newton1z(z0,na,nb)
corr=1;
z=z0;
tol=1e-12;
l=0;
    while abs(corr)>tol||abs(f1(z,na,nb))>tol
           l=l+1; %disp(l);         
           corr=f1(z,na,nb)/df1(z,na,nb);
           znew=z-corr;
           z=znew;%disp(znew);pause
           if(l>500)
               disp('newton1z_returned')
            return;
           end
    end
    

end