function xn=LODPCG2L(Ap,A,b,x0,PP,QQ,d,nitermax,Nx,Ny)
%global Ncl;
%%%%
%Hs=1/(Nx+1);
%vind=CoarseRestriction(Hs,Ncl);
%disp(isinteger(vind))
%pause
%%%%

rn=b-A*x0;
zn=AS2Lf(Ap,Nx,Ny,rn,PP,QQ,d);
r0=sqrt(zn'*zn);% to check convergence
p=zn;
xn=x0;
for it=1:nitermax
    relres=sqrt(zn'*zn)/r0;
    if relres<1e-6
        disp('PCG converged in the following number of iterations')
        disp(it-1)
        break;
    end
    w=A*p;
    aux1=rn'*zn;
    aux2=w'*p;
    alpha=aux1/aux2;
    xn=xn+alpha*p;
    rn=rn-alpha*w;
    zn=AS2Lf(Ap,Nx,Ny,rn,PP,QQ,d);
    beta=rn'*zn;
    beta=beta/aux1;
    p=beta*p+zn;
end
