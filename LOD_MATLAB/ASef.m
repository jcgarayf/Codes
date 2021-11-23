function z=ASef(A,nf,Nx,Ny,r,H,h,K_ind,vind)


z=sparse(length(r),1);
    for i=1:length(vind)
        [l,~]=RestrIndVecV2(vind(i),nf,Nx,Ny,H,h);
        [~,I,~]=intersect(K_ind,l);
        z(I)=z(I)+(A(I,I)\r(I));
    end
end

% function z=ASef(A,nf,Nx,Ny,r,H,h,K_ind,vind)
% 
% n=nf^2;
% Aaux=sparse(n,n);
% raux=sparse(n,1);
% zaux=sparse(n,1);
% Aaux(K_ind,K_ind)=A;
% raux(K_ind)=r;
%     for i=1:length(vind)
%         [l,~]=RestrIndVecV2(vind(i),nf,Nx,Ny,H,h);%RestrIndVec(vind(i),nf,Nx,Ny,R,H,h);
%         %[~,l]=ismembertol(laux,K_ind);
%         %disp(i)
%         l=intersect(l,K_ind);
%         %disp(l)
%         zaux(l)=zaux(l)+(Aaux(l,l)\raux(l));
%     end
%     z=zaux(K_ind);
%     %disp(z)
% end