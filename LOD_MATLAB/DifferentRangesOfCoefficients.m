clear

C11=[1 2 3];
C22=[1 2 3];
Nx=79;Ny=79;
NR=1;

N=length(C11);
%NR=zeros(1,N);
V_Energy_Norm=zeros(1,N);
V_Energy_NormhH=zeros(1,N);
V_Rel_Energy_Norm=zeros(1,N);
V_Rel_Energy_NormhH=zeros(1,N);
V_CNAms=zeros(1,N);
V_CNABc=zeros(1,N);

for i=1:N
    %NR(i)=finehf(C11(i),C22(i),Nx,Ny);
    [Energy_Norm,Energy_NormhH,Rel_Energy_Norm,Rel_Energy_NormhH,CNAms,CNABc]=LODsolf(NR,C11(i),C22(i),Nx,Ny);
    V_Energy_Norm(i)=Energy_Norm;
    V_Energy_NormhH(i)=Energy_NormhH;
    V_Rel_Energy_Norm(i)=Rel_Energy_Norm;
    V_Rel_Energy_NormhH(i)=Rel_Energy_NormhH;
    V_CNAms(i)=CNAms;
    V_CNABc(i)=CNABc;
    disp('Rel_Energy_Norm')
    disp(Rel_Energy_Norm)
    disp('Rel_Energy_NormhH')
    disp(Rel_Energy_NormhH)
    disp('CNAms')
    disp(CNAms)
end
save('Results-DRC-79-1','V_Energy_Norm','V_Energy_NormhH','V_Rel_Energy_Norm','V_Rel_Energy_NormhH','V_CNAms','V_CNABc')
