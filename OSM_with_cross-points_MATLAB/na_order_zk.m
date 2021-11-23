clear
na=linspace(1,1000,1000);
nna=length(na);
y=zeros(1,nna);
for i=1:nna
    y(i)=na(i)*sin(zf(1,na(i)));
end
plot(na,y,'.-r')