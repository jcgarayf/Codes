clear
%h=2^-12;
%ng=2*h/(1+4*h);
ng=0.05;
nb=0;
na=[linspace(0.01,0.1,10) linspace(0.1,1,40) linspace(1,8,60) 10 15 23 28 linspace(30,100,10)];
%na=0.7;
p=2;
q=2;
kmax=15;
nna=length(na);
SR=zeros(1,nna);
tic
for i=1:nna
    %tic
    disp(i)
    try
        SR(i)=SRNorms(na(i),nb,ng,p,q,kmax);    
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