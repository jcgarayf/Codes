clear

%%%% NEED TO INTRODUCE SOMEWHERE THE PARTS OF COEFF. MATRIX A11 A12 A21 A22!!!!!%Done

%%% NEED TO DEFINE FUNCTION f IN A SCRIPT. (NEED VALUES AT POINTS FOR GAUSS QUADRATURE)% Done
tic
% Mesh Parameters
Nx=39;%Number of interior coarse points in x direction
Ny=39;%Number of interior coarse points in y direction
NICEH=Nx-1;%Number of interior coarse elements in the horiz. direction
NICEV=Ny-1;%Number of interior coarse elements in the vert. direction
NTCEH=Nx+1;%Total number of coarse elements in the horiz. direction
NTCEV=Ny+1;%Total number of coarse elements in the vert. direction
NR=2;
R=2^NR;
n=R*(Nx+1)+1;%total number of fine grid points in horiz. direction
a=1/9;
b=1/36;
ab=1/18;
H=1/NTCEH;
h=H/R;

%Number of subdomains for LOD
PP=3;
QQ=3;

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
    %%      
 %%Computation of stiffness matrix for corrections

 
nf=n-2;%number of interior fine grid points in the horizontal direction
nc=Nx;
%nn=(nf+1)^2;
nn=40;
Hi=1/nn;
C11=3;
C22=3;

%A11=ones(nn,nn); %for i=2:2:nn^2;A11(i)=10;end
load('Matrix A11_40','A11');load('Matrix A22_40','A22');
A11=(A11+1).^C11;A22=(A22+1).^C22;
%load('MatrixA11');load('MatrixA22');
A12=zeros(nn,nn); %for i=2:2:nn^2;A12(i)=10;end
A21=zeros(nn,nn); %for i=2:2:nn^2;A21(i)=10;end
%A22=ones(nn,nn); %for i=2:2:nn^2;A22(i)=10;end

% A11=10*rand(nn); %for i=2:2:nn^2;A11(i)=0;end
% A12=zeros(nn,nn); %for i=2:2:nn^2;A12(i)=0;end
% A21=zeros(nn,nn); %for i=2:2:nn^2;A21(i)=0;end
% A22=10*rand(nn); %for i=2:2:nn^2;A22(i)=0;end


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
CMaux=sparse(nc^2,nf^2);
CM=sparse(nc^2,lenkind);
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

for i=1:nf^2
    for j=1:nf^2
        AB(i,j)=BF1(Q(i),P(i),P(j),Q(j),A11,A12,A21,A22,Hi/h);
    end
    FL2(i)=GaussianQuad2D3O(i,X(i)-h,X(i)+h,Y(i)-h,Y(i)+h,h,nf);
end

for i=1:nc^2
    for j=1:nf^2
        Ph(i,j)=LagBF(X(j),Y(j),i,H,nc);
    end
end
tic
BM=M_coef*Ph-eye(nf^2);%maybe we can restrict the matrices here using K_ind to be more efficient. Product of smaller matrices.
Maux=AB*BM';
A=BM*Maux;
Maux=Ph*Maux;
Ac=A(K_ind,K_ind);

Ac=sparse(Ac);
L = ichol(Ac);

%for nitermax=1:6
%disp(nitermax)
for i=1:nc^2
    CMaux=pcg(Ac,(-1*Maux(i,K_ind))',1e-6,100,L,L');%Ac\((-1*Maux(i,K_ind))');
    %CMaux=CorrPCG(Ac,(-1*Maux(i,K_ind))',zeros(lenkind,1),R,nf,Nx,Ny,nitermax,H,h,BM,K_ind);
    CM(i,K_ind)=CMaux;
end

Mlod=(eye(nc^2)+CM*M_coef)*Ph-CM;
Ams=Mlod*AB*Mlod';
Fms=Mlod*FL2;
v=Ams\Fms;
toc
%pause

%% Graph of LOD solution

x=linspace(0,1,Nx+2);
y=linspace(0,1,Ny+2);
phi_v=zeros(nf^2,1);
u=zeros(Nx+2,Ny+2);
for i=1:Nx+2
    for j=1:Ny+2
       for m=1:nf^2
            phi_v(m)=LagBF(x(i),y(j),m,h,nf);
       end
       
       u(i,j)=v'*Mlod*phi_v;
    end
end
figure
surf(y,x,u)
xlabel('y')
ylabel('x')

%% Reference Solution
vr=AB\FL2;%pcg(AB,FL2,1e-6,100);
x=linspace(0,1,n);
y=linspace(0,1,n);
phi_v2=zeros(nf^2,1);
u2=zeros(n,n);
for i=1:n
    for j=1:n
       for m=1:nf^2
            phi_v2(m)=LagBF(x(i),y(j),m,h,nf);
       end
       
       u2(i,j)=vr'*phi_v2;
    end
end
 figure
 surf(y,x,u2)
 xlabel('y')
 ylabel('x')
 
 %% Coarse Solution
 
ABc=Ph*AB*Ph';
FL2c=Ph*FL2;
vc=ABc\FL2c;


x=linspace(0,1,Nx+2);
y=linspace(0,1,Ny+2);
phi_v3=zeros(nc^2,1);
u3=zeros(Nx+2,Ny+2);
for i=1:Nx+2
    for j=1:Ny+2
       for m=1:nc^2
            phi_v3(m)=LagBF(x(i),y(j),m,H,nc);
       end
       
       u3(i,j)=vc'*phi_v3;
    end
end
 figure
 surf(y,x,u3)
 xlabel('y')
 ylabel('x')
 
 %% Energy norm of u_h - u^{ms}_{H}
 Nv=vr'-v'*Mlod;
 Energy_Norm=sqrt(Nv*AB*Nv');
 Rel_Energy_Norm=sqrt(Nv*AB*Nv')/sqrt(vr'*AB*vr);
 disp('Energy Norm')
 disp(Energy_Norm)
 
  %% Energy norm of u_h - u_{H}
  Nv2=vr'-vc'*Ph;
  Energy_NormhH=sqrt(Nv2*AB*Nv2');
  Rel_Energy_NormhH=sqrt(Nv2*AB*Nv2')/sqrt(vr'*AB*vr);
 
 %% Correction
 ic=ceil(nc^2/2);
 CPhi_ic=zeros(n,n);
 x=linspace(0,1,n);
 y=linspace(0,1,n);
for i=1:n
    for j=1:n
       for m=1:nf^2
            phi_v2(m)=LagBF(x(i),y(j),m,h,nf);
       end
       
       CPhi_ic(i,j)=CM(ic,:)*BM*phi_v2;
    end
end
figure
surf(x,y,CPhi_ic')

%% Relative energy norm of error of Coarse Regular FEM solution with repect to LOD solution
w=v'*Mlod;
vLR=vc'*Ph-w;
RelErrorCRFvsLOD=sqrt(vLR*AB*vLR')/sqrt(w*AB*w');
%% Results for analysis
nitermax=1;
CN_Ams(nitermax)=cond(Ams);
REN(nitermax)=Rel_Energy_Norm;
RENhH(nitermax)=Rel_Energy_NormhH;
RECRFvsLOD(nitermax)=RelErrorCRFvsLOD;

vpcg=LODPCG(ABc,Ams,Fms,zeros(length(Fms),1),PP,QQ,400,Nx,Ny);
save('Results PCG for ms 39-159')