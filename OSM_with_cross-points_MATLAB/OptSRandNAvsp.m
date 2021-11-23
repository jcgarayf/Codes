clear
%m=[200 100 30 16 10];
%ng=1./(m);
ng=0.01;
na=[linspace(0.1,1,40) linspace(1,8,60) 10 15 23 28]; %linspace(30,100,10)];
%ng=[linspace(0.01,0.09,5) 0.1 0.12 0.13];%[0.01 0.0 0.18 0.2];%linspace(0.15,0.2,4);%[0.1 0.15 0.2 0.25];
%na=[linspace(0.1,0.9,9) linspace(1,3,30) linspace(3,5,20)];%[linspace(0.01,0.1,10) linspace(0.1,1,10) linspace(1,2,10) linspace(2,5,10) linspace(5,50,10)];%[linspace(0.5,9,10) 1 1.15 linspace(1.45,3,20)]; %linspace(0.1,0.5,50)];
%na=[linspace(0.1,1,5) linspace(1,2.7,50) linspace(2.7,8,100)]; %linspace(5,100,5)];%[linspace(0.1,1,30)  linspace(2,5,30)];%[linspace(0.1,1,30) linspace(1,1.5,10) linspace(1.5,2,20) linspace(2,5,30) linspace(6,500,20)];%[linspace(0.01,0.1,10) linspace(0.1,1,10) linspace(1,2,10) linspace(1,10,10) linspace(11,50,10)];%linspace(500,5000,30);%%%0.565
%na=[linspace(2.4,2.6,50) linspace(2.6,3.5,30)];
p=[4 8 10 16];
q=p;
nnp=length(p);
nna=length(na);
%nng=length(ng);
SR=zeros(1,nna);
y=zeros(1,nnp);
opa=zeros(1,nnp);
nb=0;

for j=1:nnp
    if j==1
        kmax=20;
    elseif j==2
        kmax=10;
    else
        kmax=7;
    end
        
    %end
    disp('p')
    disp(j)
    for i=1:nna
        disp(i)
        
        %try
            SR(i)=SRNorms(na(i),nb,ng,p(j),q(j),kmax);
        %catch
          %  SR(i)=NaN;
         %   continue;
       % end
    end
    
    [y(j),ind]=min(SR);
    opa(j)=na(ind);
end
%save('SRvsNG_10_20')
%plot(na,SR,'r-')
plot(p,y,'.r-')
xlabel('p')
ylabel('Spectral Radius')
%title(strcat('Spectral Radius of Matrix operating on Error Coeffs. n\gamma=',num2str(ng)))
figure
plot(p,opa,'.b-')
xlabel('p')
ylabel('Optimal \alphaH')
%title(strcat('Optimal Alpha, n\gamma=',num2str(ng)))