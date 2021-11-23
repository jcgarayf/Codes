clear
%h=2.^((-1)*[5 6 7 8 9 10 11 12]);
%h=2.^((-1)*[5 6 7 8 9 9.5 10 11 12]);
%h=2.^((-1)*[ 8 9 10 11 12]);
%ng=2*h./(1+4*h);
%ng=[0.0009    0.0037    0.0092    0.0167    0.0256    0.0349    0.0438    0.0513    0.0568    0.0596]; %[0.01 0.02 0.03 0.04 0.05 0.06] ;
%ng=[0.0092 0.0167    0.0256    0.0349    0.0438    0.0513    0.0568    0.0596];
ng=0.01;%[ 0.02 0.03 0.04 0.05 0.06] ;
%ng=0.01;
%na=[linspace(0.01,0.1,10) linspace(0.1,1,5) linspace(2.4,2.6,30) linspace(2.6,3.5,30) linspace(3.5,8,100)]; %linspace(8,100,10)]; %linspace(5,100,5)];%[linspace(0.1,1,30)  linspace(2,5,30)];%[linspace(0.1,1,30) linspace(1,1.5,10) linspace(1.5,2,20) linspace(2,5,30) linspace(6,500,20)];%[linspace(0.01,0.1,10) linspace(0.1,1,10) linspace(1,2,10) linspace(1,10,10) linspace(11,50,10)];%linspace(500,5000,30);%%%0.565;
%na=[ linspace(0.1,1,5) linspace(1,8,100) 10 15 23 28 linspace(30,100,10)];
 %na=[linspace(0.01,0.1,10) linspace(0.1,1,30) linspace(1,8,40)]; %10 15 23 28 linspace(30,100,10)];
%na=[linspace(2.4,2.6,50) linspace(2.6,3.5,30)];
%na=linspace(10,15,30);
na=linspace(0.8,1,30);
%na=linspace(2,2.5,10);
%na=[linspace(0.1,0.5,20) linspace(0.5,2.5,70) linspace(2.5,5,20)];
%na=linspace(0.1,1,60);
%na=[linspace(0.5,1,30) linspace(1,6,80)];
nb=0;
%na=linspace(0.5,3,50);
p=8;
q=8;
kmax=20;
nna=length(na);
SR=zeros(1,nna);
%for l=1:length(h)
for l=1:length(ng)    
    disp(l)
    tic
for i=1:nna
    disp(i)
    %try
        SR(i)=SRNorms(na(i),nb,ng(l),p,q,kmax);    
    %catch
    %    SR(i)=NaN;
     %   continue;
   % end
end
toc
[minSR,ind]=min(SR);
opt_SR(l)=minSR;
opt_na(l)=na(ind);
end
%disp(opt_na)
%disp(minSR)
%plot(ng,opt_na,'.b-')
%xlabel('h')
%ylabel('opt_na')
figure
plot(na,SR,'.r-')
%plot(h,opt_na./(1/p+h),'.b-')
%xlabel('h')
%ylabel('opt_alpha')
%title(strcat('Spectral Radius of Matrix operating on Error Coeffs.
%n\gamma=',num2str(ng))) 