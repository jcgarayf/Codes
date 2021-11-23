function z=LocRestOvpV2(s,r,p,q,Nx,d)
H=1/(Nx+1);
Ny=Nx;
%disp(Nx)
W=1/p;

%Ls=ceil((s-1)*W/H)+1;%dips(Ls)
%Rs=floor(s*W/H)-1;%disp(Rs)

Ls=floor((s-1)*W/H)+1;%dips(Ls)
Rs=ceil(s*W/H)-1;%disp(Rs)

%if s==1
%    Ls=Ls+1;
%elseif s==p
%    Rs=Rs-1;
%end

%disp(Ls)
%disp(Rs)

% B=ceil((r-1)*W/H)+1;
% T=floor(r*W/H)-1;

B=floor((r-1)*W/H)+1;
T=ceil(r*W/H)-1;

%if r==1
%    B=B+1;
%elseif r==q
%    T=T-1;
%end

%disp('B')
%disp(B)
%disp(T)

%if r==1
  %  L=Ls;
 %   R=Rs;
%else
    L=Ls+(B-1)*Nx-d;
    R=(B-1)*Nx+Rs+d;
%end
    if Ls-d<1
        L=1+(B-1)*Nx;
    end
    if Rs+d>Nx
        %disp('used')
        R=B*Nx;
    end
       


%disp(L)
%disp(R)
%pause
% if mod(Nx,p)==0
%     L=(s-1)*ni+1+(r-1)*ni*Nx-d;
% else
%     L=(s-1)*ni-(s-2)+((r-1)*ni-r+1)*Nx-d;
% end

% R=L+ni-1+2*d;

% if s==1
%     L=L+d;
% elseif s==p
%     R=R-d;
% end


%disp(L)
%disp(R)

tb=T-B;

if B-d>0
    wb=-d;
else
    wb=1-B;
end

if T+d<=Ny
    wt=tb+d;
else
    wt=Ny-B;
end


% w=-d:tb+d;
% 
% if r==1
%     w=0:tb+d;
% elseif r==q
%     w=-d:tb;
% end


%disp(wb)

w=wb:wt;%w=wb:wt;


v=L:R;
%disp(v)
lenw=length(w);
lenv=length(v);
C=ones(lenw,1);
C2=ones(lenv,1);
%disp(v)
%disp(w)
M=C*v+(C2*w)'*Nx;
%disp(C*v)
%disp((C2*w)')
%disp(M)
z=reshape(M',1,lenw*lenv);

end





% function z=LocRestOvpV2(s,r,p,q,Nx,d)
% H=1/(Nx+1);
% Ny=Nx;
% %disp(Nx)
% W=1/p;
% 
% Ls=ceil((s-1)*W/H);
% Rs=floor(s*W/H);
% 
% if s==1
%     Ls=Ls+1;
% elseif s==p
%     Rs=Rs-1;
% end
% 
% %disp(Ls)
% %disp(Rs)
% 
% B=ceil((r-1)*W/H);
% T=floor(r*W/H);
% 
% if r==1
%     B=B+1;
% elseif r==q
%     T=T-1;
% end
% %disp('B')
% %disp(B)
% %disp(T)
% 
% %if r==1
%   %  L=Ls;
%  %   R=Rs;
% %else
%     L=Ls+(B-1)*Nx-d;
%     R=(B-1)*Nx+Rs+d;
% %end
%     if Ls-d<1
%         L=1+(B-1)*Nx;
%     end
%     if Rs+d>Nx
%         %disp('used')
%         R=B*Nx;
%     end
%        
% 
% 
% %disp(L)
% %disp(R)
% %pause
% % if mod(Nx,p)==0
% %     L=(s-1)*ni+1+(r-1)*ni*Nx-d;
% % else
% %     L=(s-1)*ni-(s-2)+((r-1)*ni-r+1)*Nx-d;
% % end
% 
% % R=L+ni-1+2*d;
% 
% % if s==1
% %     L=L+d;
% % elseif s==p
% %     R=R-d;
% % end
% 
% 
% %disp(L)
% %disp(R)
% 
% tb=T-B;
% 
% if B-d>0
%     wb=-d;
% else
%     wb=1-B;
% end
% 
% if T+d<=Ny
%     wt=tb+d;
% else
%     wt=Ny-B;
% end
% 
% 
% % w=-d:tb+d;
% % 
% % if r==1
% %     w=0:tb+d;
% % elseif r==q
% %     w=-d:tb;
% % end
% 
% 
% %disp(wb)
% 
% w=(wb):(wt);%w=wb:wt;
% 
% 
% v=(L):(R);
% %disp(v)
% lenw=length(w);
% lenv=length(v);
% C=ones(lenw,1);
% C2=ones(lenv,1);
% %disp(v)
% %disp(w)
% M=C*v+(C2*w)'*Nx;
% %disp(C*v)
% %disp((C2*w)')
% %disp(M)
% z=reshape(M',1,lenw*lenv);
% 
% end
% 
% 
% 
