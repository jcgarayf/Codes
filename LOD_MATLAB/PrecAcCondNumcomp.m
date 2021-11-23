clear

%%%% NEED TO INTRODUCE SOMEWHERE THE PARTS OF COEFF. MATRIX A11 A12 A21 A22!!!!!%Done

%%% NEED TO DEFINE FUNCTION f IN A SCRIPT. (NEED VALUES AT POINTS FOR GAUSS QUADRATURE)% Done
tic
% Mesh Parameters
Nx=19;%Number of interior coarse points in x direction
Ny=19;%Number of interior coarse points in y direction
NICEH=Nx-1;%Number of interior coarse elements in the horiz. direction
NICEV=Ny-1;%Number of interior coarse elements in the vert. direction
NTCEH=Nx+1;%Total number of coarse elements in the horiz. direction
NTCEV=Ny+1;%Total number of coarse elements in the vert. direction
NR=4;
R=2^NR;
n=R*(Nx+1)+1;%total number of fine grid points in horiz. direction
a=1/9;
b=1/36;
ab=1/18;
H=1/NTCEH;
h=H/R;
N=5;
cl=4;

%Number of subdomains for LOD
PP=2;
QQ=2;

%PCG parameter
%nitermax=3;

%%Local Matrix for Interior Elements
AInt=H^2*[a ab ab b; ab a b ab;ab b a ab;b ab ab a];
%%Local Matrix for side element
Aside=H^2*[a ab; ab a];
%M_ind=zeros((n-2)^2,9);
%M_coef=zeros((n-2)^2,9);
M_coef=sparse((n-2)^2,Nx^2);




%%% Projection of fine lagrange basis functions
    for i=1:n-2
        for j=1:n-2
            vind=zeros(1,9);
            vcoef=zeros(1,9);
            case_sq=case_sqf(j*h,i*h,H);
            if case_sq==1
                I=floor(i*h/H);
                J=floor(j*h/H);
                [Ind,c]=Projcoeffs2(I,J,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,1);
                nInd=length(Ind);
                vind(1:nInd)=Ind;
                vcoef(1:nInd)=c;
            elseif case_sq==2
                J2=round(j*h/H);
                J1=J2-1;
                I=floor(i*h/H);
                [Ind1,c1]=Projcoeffs2(I,J1,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,1);
                [Ind2,c2]=Projcoeffs2(I,J2,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,2);
                nind1=length(Ind1);
                vind(1:nind1)=Ind1;
                vcoef(1:nind1)=c1;
                ii=nind1;
               
                 for k=1:length(Ind2)
                    fl=0;
                    for l=1:nind1
                        if Ind1(l)==Ind2(k)
                           vcoef(l)=vcoef(l)+c2(k);
                           fl=1;
                           break
                        end
                    end 
                    if fl==0
                        ii=ii+1;
                        vind(ii)=Ind2(k);
                        vcoef(ii)=c2(k);
                    end
                    
                 end
               % pause
            elseif case_sq==22
                I2=round(i*h/H);
                I1=I2-1;
                J=floor(j*h/H);
                [Ind1,c1]=Projcoeffs2(I1,J,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,1);
                [Ind2,c2]=Projcoeffs2(I2,J,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,2);
                nind1=length(Ind1);
                vind(1:nind1)=Ind1;
                vcoef(1:nind1)=c1;
                ii=nind1;
                 for k=1:length(Ind2)
                    fl=0;
                    for l=1:nind1
                        if Ind1(l)==Ind2(k)
                           vcoef(l)=vcoef(l)+c2(k);
                           fl=1;
                           break
                        end
                    end 
                    if fl==0
                        ii=ii+1;
                        vind(ii)=Ind2(k);
                        vcoef(ii)=c2(k);
                    end
                 end
                
                
            elseif case_sq==4
                I=round(i*h/H);
                J=round(j*h/H);
                I1=I-1;
                J1=J-1;
                I2=I1;
                J2=J;
                I3=I;
                J3=J1;
                I4=I;
                J4=J;
                
                [Ind1,c1]=Projcoeffs2(I1,J1,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,1);
                [Ind2,c2]=Projcoeffs2(I2,J2,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,2);
                [Ind3,c3]=Projcoeffs2(I3,J3,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,3);
                [Ind4,c4]=Projcoeffs2(I4,J4,a,AInt,Aside,h,H,i,j,Nx,Ny,case_sq,4);
                
                nind1=length(Ind1);
                vind(1:nind1)=Ind1;
                vcoef(1:nind1)=c1;
                ii=nind1;
                for k=1:length(Ind2)
                    fl=0;
                    for l=1:nind1
                        if Ind1(l)==Ind2(k)
                           vcoef(l)=vcoef(l)+c2(k);
                           fl=1;
                           break
                        end
                    end 
                    if fl==0
                        ii=ii+1;
                        vind(ii)=Ind2(k);
                        vcoef(ii)=c2(k);
                    end
                end
                nind1=ii;
                
                 for k=1:length(Ind3)
                    fl=0;
                    for l=1:nind1
                        if vind(l)==Ind3(k)
                           vcoef(l)=vcoef(l)+c3(k);
                           fl=1;
                           break
                        end
                    end 
                    if fl==0
                        ii=ii+1;
                        vind(ii)=Ind3(k);
                        vcoef(ii)=c3(k);
                    end
                 end
                 
                nind1=ii;
                
                 for k=1:length(Ind4)
                    fl=0;
                    for l=1:nind1
                        if vind(l)==Ind4(k)
                           vcoef(l)=vcoef(l)+c4(k);
                           fl=1;
                           break
                        end
                    end 
                    if fl==0
                        ii=ii+1;
                        vind(ii)=Ind4(k);
                        vcoef(ii)=c4(k);
                    end
                end
                
               
                           
            end
            
        
        p=(i-1)*(n-2)+j;
        vind_aux=nonzeros(vind);
        %M_ind(p,:)=vind;
        M_coef(p,vind_aux)=nonzeros(vcoef);
       
       end
    end
    
    M_coef=1/4*M_coef;%0*M_coef;%1/4*M_coef;
 toc
 %pause
    %%      
 %%Computation of stiffness matrix for corrections

 
nf=n-2;%number of interior fine grid points in the horizontal direction
nc=Nx;
%nn=(nf+1)^2;
nn=40;
global HA;
HA=1/nn;
C11=1;
C22=1;

%A11=ones(nn,nn); %for i=2:2:nn^2;A11(i)=10;end
global A11
global A22
global A12;
global A21;
load('Matrix A11_40','A11');load('Matrix A22_40','A22');
A11=(A11+1).^C11;A22=(A22+1).^C22;A12=zeros(nn,nn); A21=zeros(nn,nn);
%A11=ones(nn);A22=ones(nn); A12=zeros(nn,nn); A21=zeros(nn,nn);


Ph=sparse(nc^2,nf^2);
AB=sparse(nf^2,nf^2);
FL2=zeros(nf^2,1);
P=zeros(nf^2,1);
Q=zeros(nf^2,1);
X=zeros(nf^2,1);
Y=zeros(nf^2,1);




%Discarding fine nodes that coincide with coarse nodes
lenkind=nf^2-nc^2;
K_ind=zeros(1,lenkind);
%CMaux=sparse(nc^2,nf^2);
CM2=sparse(nc^2,lenkind);
vec_aux=zeros(1,nf^2);
l=0;
for i=1:nf^2
        if mod(i,nf)~=0
            Q(i)=floor(i/nf)+1;%this formula holds when i is not a multiple of nf
        else
            Q(i)=i/nf;
        end
        P(i)=i-(Q(i)-1)*nf;
        xi=P(i)*h;yi=Q(i)*h;X(i)=xi;Y(i)=yi;
        case_sqi=case_sqf(xi,yi,H);
        if case_sqi~=4
           l=l+1; 
           K_ind(l)=i;
        end
end

% for i=1:nf^2
%     for j=1:nf^2
%         %AB(i,j)=BF1(Q(i),P(i),P(j),Q(j),A11,A12,A21,A22,Hi/h);
%         AB(i,j)=BilinearGQuadPartInterm(X(i)-h,X(i),Y(i)-h,Y(i),X(i),Y(i),X(j),Y(j),h,N)+BilinearGQuadPartInterm(X(i),X(i)+h,Y(i)-h,Y(i),X(i),Y(i),X(j),Y(j),h,N)+BilinearGQuadPartInterm(X(i)-h,X(i),Y(i),Y(i)+h,X(i),Y(i),X(j),Y(j),h,N)+BilinearGQuadPartInterm(X(i),X(i)+h,Y(i),Y(i)+h,X(i),Y(i),X(j),Y(j),h,N);
%     end
%     FL2(i)=GaussianQuad2D3O(i,X(i)-h,X(i)+h,Y(i)-h,Y(i)+h,h,nf);
% end

%%%%%%%%%%%%%%%%%%%%
% AB(1,1)=BilinearGQuadPartInterm(X(1)-h,X(1),Y(1)-h,Y(1),X(1),Y(1),X(1),Y(1),h,N)+BilinearGQuadPartInterm(X(1),X(1)+h,Y(1)-h,Y(1),X(1),Y(1),X(1),Y(1),h,N)+BilinearGQuadPartInterm(X(1)-h,X(1),Y(1),Y(1)+h,X(1),Y(1),X(1),Y(1),h,N)+BilinearGQuadPartInterm(X(1),X(1)+h,Y(1),Y(1)+h,X(1),Y(1),X(1),Y(1),h,N);
% AB(1,2)=BilinearGQuadPartInterm(X(1),X(1)+h,Y(1)-h,Y(1),X(1),Y(1),X(2),Y(2),h,N)+BilinearGQuadPartInterm(X(1),X(1)+h,Y(1),Y(1)+h,X(1),Y(1),X(2),Y(2),h,N);
% AB(1,1+Nx)=BilinearGQuadPartInterm(X(1)-h,X(1),Y(1),Y(1)+h,X(1),Y(1),X(1+Nx),Y(1+Nx),h,N)+BilinearGQuadPartInterm(X(1),X(1)+h,Y(1),Y(1)+h,X(1),Y(1),X(1+Nx),Y(1+Nx),h,N);
% AB(1,1+Nx+1)=BilinearGQuadPartInterm(X(1),X(1)+h,Y(1),Y(1)+h,X(1),Y(1),X(1+Nx+1),Y(1+Nx+1),h,N);
% AB(2,1)=AB(1,2); AB(1+Nx,1)=AB(1,1+Nx); AB(1+Nx+1,1)=AB(1,1+Nx+1);

tic
for i=1:nf^2
    %i=InteriorIndex(k);
AB(i,i)=BilinearGQuadPartInterm(X(i)-h,X(i),Y(i)-h,Y(i),X(i),Y(i),X(i),Y(i),h,N)+BilinearGQuadPartInterm(X(i),X(i)+h,Y(i)-h,Y(i),X(i),Y(i),X(i),Y(i),h,N)+BilinearGQuadPartInterm(X(i)-h,X(i),Y(i),Y(i)+h,X(i),Y(i),X(i),Y(i),h,N)+BilinearGQuadPartInterm(X(i),X(i)+h,Y(i),Y(i)+h,X(i),Y(i),X(i),Y(i),h,N);
if mod(i,nf)~=0
AB(i,i+1)=BilinearGQuadPartInterm(X(i),X(i)+h,Y(i)-h,Y(i),X(i),Y(i),X(i+1),Y(i+1),h,N)+BilinearGQuadPartInterm(X(i),X(i)+h,Y(i),Y(i)+h,X(i),Y(i),X(i+1),Y(i+1),h,N);
AB(i+1,i)=AB(i,i+1);
end
if i<nf*(nf-1)+1
AB(i,i+nf)=BilinearGQuadPartInterm(X(i)-h,X(i),Y(i),Y(i)+h,X(i),Y(i),X(i+nf),Y(i+nf),h,N)+BilinearGQuadPartInterm(X(i),X(i)+h,Y(i),Y(i)+h,X(i),Y(i),X(i+nf),Y(i+nf),h,N);
AB(i+nf,i)=AB(i,i+nf);
end
if i<nf*(nf-1)+1&&mod(i,nf)~=0
AB(i,i+nf+1)=BilinearGQuadPartInterm(X(i),X(i)+h,Y(i),Y(i)+h,X(i),Y(i),X(i+nf+1),Y(i+nf+1),h,N);
AB(i+nf+1,i)=AB(i,i+nf+1);
end
if i<nf*(nf-1)+1&&mod(i-1,nf)~=0
AB(i,i+nf-1)=BilinearGQuadPartInterm(X(i)-h,X(i),Y(i),Y(i)+h,X(i),Y(i),X(i+nf-1),Y(i+nf-1),h,N);
AB(i+nf-1,i)=AB(i,i+nf-1);
end
FL2(i)=GaussianQuad2D3O(i,X(i)-h,X(i)+h,Y(i)-h,Y(i)+h,h,nf);
end
toc
%%%%%%%%%%%%%%%%%%%%
%save('Matrix AB and FL2 patches test','AB','FL2')
%pause

for i=1:nc^2
    for j=1:nf^2
        Ph(i,j)=LagBF(X(j),Y(j),i,H,nc);
    end
end
%pause
tic
BM=M_coef*Ph-speye(nf^2);%maybe we can restrict the matrices here using K_ind to be more efficient. Product of smaller matrices.
Maux=AB*BM';
A=BM*Maux;
Maux=Ph*Maux;
Ac=A(K_ind,K_ind);

Ac=sparse(Ac);
%L = ichol(Ac);

