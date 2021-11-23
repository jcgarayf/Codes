function NR=finehf(C11,C22,Nx,Ny)
%Nx=19;%Number of interior coarse points in x direction
%Ny=19;%Number of interior coarse points in y direction
NICEH=Nx-1;%Number of interior coarse elements in the horiz. direction
NICEV=Ny-1;%Number of interior coarse elements in the vert. direction
NTCEH=Nx+1;%Total number of coarse elements in the horiz. direction
NTCEV=Ny+1;%Total number of coarse elements in the vert. direction
H=1/NTCEH;
Nmax=1;
NR=0;
H1NDr=1;

nn=40;
Hi=1/nn;
load('Matrix A11_40');load('Matrix A22_40');
A11=C11*A11;A22=C22*A22;
A12=zeros(nn,nn);
A21=zeros(nn,nn);


while H1NDr>0.01||NR>Nmax
NR=NR+1;
R=2^NR;
n=R*(Nx+1)+1;%total number of fine grid points in horiz. direction
h=H/R;
nf=n-2;%number of interior fine grid points in the horizontal direction
%%



%%
AB=sparse(nf^2,nf^2);
FL2=zeros(nf^2,1);
P=zeros(nf^2,1);
Q=zeros(nf^2,1);
X=zeros(nf^2,1);
Y=zeros(nf^2,1);

%%
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
        AB(i,j)=BF1(Q(i),P(i),P(j),Q(j),A11,A12,A21,A22,Hi/h);
    end
    FL2(i)=GaussianQuad2D3O(i,X(i)-h,X(i)+h,Y(i)-h,Y(i)+h,h,nf);
end



%% Solution
vr=AB\FL2;%pcg(AB,FL2,1e-6,100);

 %% H1 Norm of difference
 if NR~=1
     Ph=sparse(nfp^2,nf^2);
     M1=sparse(nf,nf);
     M2=sparse(nf,nf);
     M3=sparse(nf,nf);
     
     for i=1:nfp^2
        for j=1:nf^2
            Ph(i,j)=LagBF(X(j),Y(j),i,hp,nfp);
        end
    end
     
     for i=1:nf^2
        for j=1:nf^2
            M1(i,j)=H1P1f(P(i),Q(i),P(j),Q(j),h);
            M2(i,j)=H1P2f(P(i),Q(i),P(j),Q(j));
            M3(i,j)=H1P3f(P(i),Q(i),P(j),Q(j));
        end
     end

     vd=vr'-vp'*Ph;
     M=M1+M2+M3;
     H1ND=sqrt(vd*M*vd');
     H1NDr=H1ND/sqrt(vr'*M*vr);
     disp(H1NDr)
 end
 vp=vr;
 nfp=nf;
 hp=h;
end
disp('h')
disp(h)
disp('NR')
disp(NR)
 
