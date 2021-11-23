Nx=5;%Number of interior coarse points in x direction
Ny=5;%Number of interior coarse points in y direction
NICEH=Nx-1;%Number of interior coarse elements in the horiz. direction
NICEV=Ny-1;%Number of interior coarse elements in the vert. direction
NTCEH=Nx+1;%Total number of coarse elements in the horiz. direction
NTCEV=Ny+1;%Total number of coarse elements in the vert. direction
NR=1;
R=2^NR;
n=R*(Nx+1)+1;
a=1/9;
b=1/36;
ab=1/18;
H=1/NTCEH;
h=H/R;

%%
%%Local Matrix for Interior Elements
AInt=H^2*[a ab ab b; ab a b ab;ab b a ab;b ab ab a];
%%Local Matrix for side element
Aside=H^2*[a ab; ab a];
M_ind=zeros((n-2)^2,9);
M_coef=zeros((n-2)^2,9);
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
        M_ind(p,:)=vind;
        M_coef(p,:)=vcoef;
       
       end
    end
    
    M_coef=1/4*M_coef;
 %%



x=linspace(0,1,100);y=linspace(0,1,100);
l=85;%the l-th fine lagrange basis function

c=M_coef(l,:);
ind=M_ind(l,:);
for i=1:100
    for j=1:100
        %z(i,j)=0.1439*LagBF(x(i),y(j),1,H,Nx)-0.0469*LagBF(x(i),y(j),2,H,Nx) ;
        zaux=0;
        for l=1:9
            zaux=zaux+c(l)*LagBF(x(i),y(j),ind(l),H,Nx);
        end
        
    end
end
surf(x,y,z')