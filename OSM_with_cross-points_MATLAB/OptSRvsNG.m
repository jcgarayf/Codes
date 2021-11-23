clear
%m=[400 300 200 100 60 30 16];
m=16;
ng=1./(m);
na=linspace(1,1.7,100);
%na=[linspace(0.1,1,40) linspace(1,8,60) 10 15 23 28]; %linspace(30,100,10)];
%ng=[linspace(0.01,0.09,5) 0.1 0.12 0.13];%[0.01 0.0 0.18 0.2];%linspace(0.15,0.2,4);%[0.1 0.15 0.2 0.25];
%na=[linspace(0.1,0.9,9) linspace(1,3,30) linspace(3,5,20)];%[linspace(0.01,0.1,10) linspace(0.1,1,10) linspace(1,2,10) linspace(2,5,10) linspace(5,50,10)];%[linspace(0.5,9,10) 1 1.15 linspace(1.45,3,20)]; %linspace(0.1,0.5,50)];
%na=[linspace(0.1,1,5) linspace(1,2.7,50) linspace(2.7,8,100)]; %linspace(5,100,5)];%[linspace(0.1,1,30)  linspace(2,5,30)];%[linspace(0.1,1,30) linspace(1,1.5,10) linspace(1.5,2,20) linspace(2,5,30) linspace(6,500,20)];%[linspace(0.01,0.1,10) linspace(0.1,1,10) linspace(1,2,10) linspace(1,10,10) linspace(11,50,10)];%linspace(500,5000,30);%%%0.565
%na=[linspace(2.4,2.6,50) linspace(2.6,3.5,30)];
p=5;
q=5;
nna=length(na);
nng=length(ng);
SR=zeros(1,nna);
y=zeros(1,nng);
opa=zeros(1,nng);
nb=0;
for j=1:nng
    if j<4
        kmax=30;
    else
        kmax=20;
    end
    disp('ng')
    disp(j)
    for i=1:nna
        disp(i)
        
        try
            SR(i)=SRNorms(na(i),nb,ng(j),p,q,kmax);
        catch
            SR(i)=NaN;
            continue;
        end
    end
    
    [y(j),ind]=min(SR);
    opa(j)=na(ind);
end
%save('SRvsNG_10_20')
%plot(na,SR,'r-')
plot(ng,y,'.r-')
xlabel('\gamma/H')
ylabel('Spectral Radius')
%title(strcat('Spectral Radius of Matrix operating on Error Coeffs. n\gamma=',num2str(ng)))
figure
plot(ng,opa,'.b-')
xlabel('\gamma/H')
ylabel('Optimal \alphaH')
%title(strcat('Optimal Alpha, n\gamma=',num2str(ng)))