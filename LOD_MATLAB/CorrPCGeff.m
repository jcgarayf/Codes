function [Lic1,Lic4,xn]=CorrPCGeff(A,b,x0,L,nf,Nx,Ny,nitermax,H,h,K_ind)

rn=b;

[~,vindC_aux]=RestrIndVecV2(L,nf,Nx,Ny,H,h);%coarse patch around L-th node
%disp(vindC_aux)
Lic1=vindC_aux(1);Lic4=vindC_aux(end);
Lic=AddLayer(Nx,vindC_aux(1),vindC_aux(end),1);Lic1=min([Lic(1),Lic1]); Lic4=max([Lic(end),Lic4]); %fl=(Lic4>(Nx*(Ny-1)))*1; %index of node on the top-right corner of the interior patch
vindC=[vindC_aux, Lic ];%adding one coarse layer to coarse patch
zn=ASef(A,nf,Nx,Ny,rn,H,h,K_ind,vindC);
%zn=ASf(A,R,nf,Nx,Ny,rn,H,h,K_ind);
r0=sqrt(zn'*zn);
p=zn;
xn=x0;
for it=1:nitermax
    relres=sqrt(zn'*zn)/r0;
    if relres<1e-6
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
    
%    if fl==0
    Lic=AddLayer(Nx,Lic1,Lic4,3); 
%     if it==13
%         disp(Lic1);disp(Lic4)
%         disp(Lic)
%         disp(it)
%     end
    if length(Lic)>1
    Lic1=min([Lic(1),Lic1]);     
    Lic4=max([Lic(end),Lic4]); %fl=(Lic4>(Nx*(Ny-1)))*1;%index of node on the top-right corner of the interior patch
    end   
    vindC=[vindC, Lic];
 %   end
    
    zn=ASef(A,nf,Nx,Ny,rn,H,h,K_ind,vindC);
    beta=rn'*zn;
    beta=beta/aux1;
    p=beta*p+zn;
    
end
disp('Number of iterations in correction computations')
disp(it)
disp('relative residual')
disp(relres)



% %disp('hey')
% %rn=b-A*x0;%% Maybe change this to rn=b since x0=(0,...,0).
% rn=b;
% Hh=round(H/h);
% %pause
% [vindF_aux,vindC_aux]=RestrIndVecV2(L,nf,Nx,Ny,H,h);%coarse patch around L-th node
% Lic=AddLayer(Nx,vindC_aux(1),vindC_aux(end),1);Lic1=Lic(1); Lic4=Lic(end); %index of node on the top-right corner of the interior patch
% vindC=[vindC_aux, Lic ];%adding one coarse layer to coarse patch
% 
% zn=ASf(A,nf,Nx,Ny,rn,H,h,K_ind,vindC);
% 
% Lif=AddLayer(nf,vindF_aux(1),vindF_aux(end),2*Hh);Lif1=Lif(1);Lif4=Lif(end);
% nzi_aux=[vindF_aux Lif];[~,nzi,~]=intersect(K_ind,nzi_aux);
% %disp(nzi);disp(round(nzi));
% %disp(length(zn));disp(max(nzi));
% r0=sqrt(zn(nzi)'*zn(nzi));%r0v2=sqrt(zn'*zn);
% p=zn;
% xn=x0;
% w=zeros(length(rn),1);
% 
% for it=1:nitermax
%     relres=sqrt(zn'*zn)/r0;
%     if relres<1e-6
%         disp('PCG converged in the following number of iterations')
%         disp(it)
%         break;
%     end
%     
%     %A11aux=A([nzi],nzi); A21aux=A(li,li);
%     %w1aux=A11aux*p(nzi);w2aux=A21aux*p(nzi);
%     %w(nzi)=w1aux;w(li)=w2aux;
%     Lif=AddLayer(nf,Lif1,Lif4,2*Hh+1);
%     Lif1=Lif(1); Lif4=Lif(end);[~,Lifres,~]=intersect(K_ind,Lif);
%     size(nzi)
%     size(Lifres)
%     %Test=[nzi Lifres];
%    disp('hey')
%     w([nzi;Lifres])=A([nzi;Lifres],nzi)*p(nzi);%%maybe use nziaux=nzi and then nzi=[nzi Lif]. Then w(nzi)=A(nzi,nziaux)*p(nziaux); Also, probably we need to generate only small part of A since we probably won't have (don't need) the entire A locally.
%     %w=A*p;
%     aux1=rn(nzi)'*zn(nzi);
%     aux2=w(nzi)'*p(nzi);
%     alpha=aux1/aux2;
%     xn=xn+alpha*p;
%     rn=rn-alpha*w;
%     
%     nzi=[nzi;Lifres];
%     
%     Lic=AddLayer(Nx,Lic1,Lic4,3); Lic1=Lic(1); Lic4=Lic(end); %index of node on the top-right corner of the interior patch
%     vindC=[vindC, Lic];
%    
%     zn=ASf(A,nf,Nx,Ny,rn,H,h,K_ind,vindC);
%     
%     Lif=AddLayer(nf,Lif1,Lif4,Hh-1); Lif1=Lif(1); Lif4=Lif(end);[~,Lifres,~]=intersect(K_ind,Lif);
%     nzi=[nzi;Lifres];
%     
%     beta=rn'*zn;
%     beta=beta/aux1;
%     p=beta*p+zn;
%     
%     %% Plot of partial correction
%     
%      
% %     for i=1:nf+2
% %         for j=1:nf+2
% %            for m=1:nf^2
% %                 phi_v2(m)=LagBF(x(i),y(j),m,h,nf);
% %            end
% %            Cv(K_ind)=xn;
% %            CPhi_ic(i,j)=Cv*BM*phi_v2;
% %         end
% %     end
% %     figure
% %     surf(x,y,CPhi_ic')
% %     disp('relres')
% %     disp(relres)
% %     figure
% %     plot(Vx,Cv,'.r-')
% %     pause
%     
%     
%     %%
%     
% end
% disp('Number of iterations in correction computations')
% disp(it)
% disp('relative residual')
% disp(relres)
end