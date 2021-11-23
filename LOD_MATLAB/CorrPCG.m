function xn=CorrPCG(A,b,x0,R,nf,Nx,Ny,nitermax,H,h,BM,K_ind)
rn=b-A*x0;
zn=ASf(A,R,nf,Nx,Ny,rn,H,h,K_ind);
r0=sqrt(zn'*zn);
p=zn;
xn=x0;
% x=linspace(0,1,nf+2);
% y=linspace(0,1,nf+2);
% Vx=1:nf^2;
% phi_v2=zeros(nf^2,1);
for it=1:nitermax
    relres=sqrt(zn'*zn)/r0;
    if relres<eps
        disp('PCG converged in the following number of iterations')
        disp(it)
        break;
    end
    w=A*p;
    aux1=rn'*zn;
    aux2=w'*p;
    alpha=aux1/aux2;
    xn=xn+alpha*p;
    rn=rn-alpha*w;
    zn=ASf(A,R,nf,Nx,Ny,rn,H,h,K_ind);
    beta=rn'*zn;
    beta=beta/aux1;
    p=beta*p+zn;
    
    %% Plot of partial correction
    
     
%     for i=1:nf+2
%         for j=1:nf+2
%            for m=1:nf^2
%                 phi_v2(m)=LagBF(x(i),y(j),m,h,nf);
%            end
%            Cv(K_ind)=xn;
%            CPhi_ic(i,j)=Cv*BM*phi_v2;
%         end
%     end
%     figure
%     surf(x,y,CPhi_ic')
%     disp('relres')
%     disp(relres)
%     figure
%     plot(Vx,Cv,'.r-')
%     pause
    
    
    %%
    
end
disp('Number of iterations in correction computations')
disp(it)
disp('relative residual')
disp(relres)