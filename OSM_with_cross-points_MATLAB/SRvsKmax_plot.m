clear
nb=0;
na=0.7231;
ng=0.01;
p=10;
q=10;
kmax=[1 3 5 10 20 50 100];
nk=length(kmax);
y=zeros(1,nk);
for i=1:nk
    disp (i)
    y(i)=SRNorms(na,nb,ng,p,q,kmax(i));
end
plot(kmax,y)
xlabel('k_{\max}')
ylabel('Spectral Radius')
