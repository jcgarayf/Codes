%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  Computation of optimal normalized boundary parameters and spectral radius of iteration operator%%
%%  Plot of curve Spectral radius vs. Normalized alpha                                             %%  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
ng=0.05; %normalized gamma
nb=0;% normalized beta (for Ventcel transmission conditions)
na=[linspace(0.01,0.1,10) linspace(0.1,1,40) linspace(1,8,60) 10 15 23 28 linspace(30,100,10)]; % normalized alpha values

p=2; %number of subdomains in horizontal direction 
q=2; %number of subdomains in vertical direction
kmax=15; % max number of generalized Fourier modes
nna=length(na);
SR=zeros(1,nna);
tic
for i=1:nna
    %tic
    disp(i)
    try
        SR(i)=SRNorms(na(i),nb,ng,p,q,kmax); % computes spectral radius of iteration operator (for the error series coefficients)  
    catch
        SR(i)=NaN;
        continue;
    end
    %toc
end
toc
[minSR,ind]=min(SR);
opt_na=na(ind);
disp('Optimal normalized alpha')
disp(opt_na)
disp('Optimal spectral radius')
disp(minSR)
figure;plot(na,SR,'.r-')
xlabel('\alphaH')
ylabel('Spectral Radius')
title(strcat('Spectral Radius of Matrix operating on Error Coeffs. n\gamma=',num2str(ng)))
