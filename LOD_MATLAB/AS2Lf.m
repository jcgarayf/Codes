function z=AS2Lf(A,Nx,Ny,r,p,q,d)
global Pp;
global Acl;
z=zeros(length(r),1);
    for s=1:p
        for rr=1:q
            l=LocRestOvpV2(s,rr,p,q,Nx,d);%restrictf(Nx,Ny,s,rr,p,q);%LocRestOvpV2(s,r,p,q,Nx,d);%restrictf(Nx,Ny,s,rr,p,q);%LocRestOvpV2(s,r,p,q,Nx,d);%LocRestOvp(s,rr,p,q,Nx,d);%
            z(l)=z(l)+(A(l,l)\r(l));
        end
    end
    zaux=Pp*r;
    zaux=Acl\zaux;
    z=z+ Pp'*zaux;
%z=A\r;
end



% function z=AS2f(A,Nx,Ny,r,p,q,vind)
% global Pp;
% global Acl;
% z=zeros(length(r),1);
%     for s=1:p
%         for rr=1:q
%             l=LocRestOvpV2(s,r,p,q,Nx,d);%LocRestOvp(s,rr,p,q,Nx,d);%restrictf(Nx,Ny,s,rr,p,q);
%             z(l)=z(l)+(A(l,l)\r(l));
%         end
%     end
%     %disp(vind')
%     %disp(A(vind(1),vind(1)))
%     %pause
%     zaux=Acl\r(vind);
%     z=z+ Pp'*zaux;
% %z=A\r;
% end