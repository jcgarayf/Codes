function z=ASf(A,R,nf,Nx,Ny,r,H,h,K_ind)

n=nf^2;
Aaux=sparse(n,n);
raux=sparse(n,1);
zaux=sparse(n,1);
Aaux(K_ind,K_ind)=A;
raux(K_ind)=r;
    for i=1:Nx*Ny
        l=RestrIndVec(i,nf,Nx,Ny,R,H,h);
        %[~,l]=ismembertol(laux,K_ind);
        %disp(i)
        l=intersect(l,K_ind);
        %disp(l)
        zaux(l)=Aaux(l,l)\raux(l);
    end
    z=zaux(K_ind);
end
