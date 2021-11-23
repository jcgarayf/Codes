clear
nf=10;
nn=(nf+1)^2;
%   A11=3*ones(nn,nn); for i=1:10:nn^2;A11(i)=0;end
% %  A12=zeros(nn,nn); %for i=2:2:nn^2;A12(i)=0;end
% %  A21=zeros(nn,nn); %for i=2:2:nn^2;A21(i)=0;end
% %  A22=5*ones(nn,nn); %for i=1:5:nn^2;A22(i)=0;end
% 
%  %A11=[ones(nn/4,nn/8) zeros(nn/4,nn/8) ones(nn/4,nn/4) zeros(nn/4,nn/8);zeros(nn/4,nn/4) zeros(nn/4,nn/4) ];
%  A12=zeros(nn,nn); %for i=2:2:nn^2;A12(i)=0;end
%  A21=zeros(nn,nn); %for i=2:2:nn^2;A21(i)=0;end
%  A22=[ones(nn/4,nn/4) ones(nn/4,nn/4);zeros(nn/4,nn/4) zeros(nn/4,nn/4)];

%A11=ones(nn,nn); %for i=2:2:nn^2;A11(i)=10;end
load('MatrixA11');load('MatrixA22');
A12=zeros(nn,nn); %for i=2:2:nn^2;A12(i)=10;end
A21=zeros(nn,nn); %for i=2:2:nn^2;A21(i)=10;end
%A22=ones(nn,nn); %for i=2:2:nn^2;A22(i)=10;end


Nx=nf;
Ny=nf;
h=1/(Nx+1);
%A=zeros(nf^2,nf^2);

for i=1:nf^2
        if mod(i,nf)~=0
            Q(i)=floor(i/nf)+1;%this formula holds when i is not a multiple of nf
        else
            Q(i)=i/nf;
        end
        P(i)=i-(Q(i)-1)*nf;
        xi=P(i)*h;yi=Q(i)*h;X(i)=xi;Y(i)=yi;
        
end

for i=1:nf^2
    for j=1:nf^2
        AB(i,j)=BF1(Q(i),P(i),P(j),Q(j),A11,A12,A21,A22,[]);
    end
    FL2(i)=GaussianQuad2D3O(i,X(i)-h,X(i)+h,Y(i)-h,Y(i)+h,h,nf);
end

v=AB\FL2';

x=linspace(0,1,Nx+2);
y=linspace(0,1,Ny+2);
phi_v=zeros(nf^2,1);
u=zeros(Nx+2,Ny+2);
for i=1:Nx+2
    for j=1:Ny+2
       for m=1:nf^2
            phi_v(m)=LagBF(x(i),y(j),m,h,nf);
       end
       
       u(i,j)=v'*phi_v;
    end
end
 figure
 surf(y,x,u)


% for i=1:nf^2
%     disp(i)
%     if mod(i,nf)~=0
%         q_i=floor(i/nf)+1;
%     else
%         q_i=i/nf;
%     end
%     p_i=i-(q_i-1)*nf;
%     for j=1:nf^2
%         if mod(j,nf)~=0
%         q_j=floor(j/nf)+1;
%         else
%         q_j=j/nf;
%         end
%         p_j=j-(q_j-1)*nf;
%         
%         A(i,j)=BF1(q_i,p_i,p_j,q_j,A11,A12,A21,A22,h);
%     end
% end
% F=h^2*ones(nf^2,1);
% 
% v=A\F;%pcg(A,F);
% 
% 
% x=linspace(0,1,Nx+2);
% y=linspace(0,1,Ny+2);
% u=zeros(Nx+2,Ny+2);
% %u2=zeros(Nx*Ny,1);
% for i=1:Nx+2
%     for j=1:Ny+2
%         u2=zeros(Nx*Ny,1);
%         for k=1:Nx*Ny
%                  u2(k)=v(k)*LagBF(x(i),y(j),k,h,nf);
%         end
%         u(i,j)=sum(u2);
%     end
% end
% figure
% surf(y,x,u)