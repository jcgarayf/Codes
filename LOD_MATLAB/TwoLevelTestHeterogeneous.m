global Acl;
global Ncl;
global Pp;
vecd=[1 2 4 8];%[16 32];%[1 2 4 8 16];%[1 2 4];%[1 2 4 8];%[5 10 20];
vncl=4;%[4 9 19 39];%[ 4 9 19];
lenvecd=length(vecd);
lenvncl=length(vncl);
for k=1:lenvncl
    disp('New Coarse Grid')
ncl=vncl(k);
PP=ncl+1;
QQ=PP;
Hcl=1/(ncl+1);
Phc=zeros(ncl^2,nc^2);
Pc=zeros(nc^2,1);
Qc=zeros(nc^2,1);
Xc=zeros(nc^2,1);
Yc=zeros(nc^2,1);
for i=1:nc^2
if mod(i,nc)~=0
Qc(i)=floor(i/nc)+1;%this formula holds when i is not a multiple of nf
else
Qc(i)=i/nc;
end
Pc(i)=i-(Qc(i)-1)*nc;
xi=Pc(i)*H;yi=Qc(i)*H;Xc(i)=xi;Yc(i)=yi;
end
for i=1:ncl^2
for j=1:nc^2
Phc(i,j)=LagBF(Xc(j),Yc(j),i,Hcl,ncl);
end
end

Ncl=ncl;
Acl=Phc*ABc*Phc';
%Acl=Phc*Ams*Phc';
Pp=Phc;
for j=1:lenvecd
d=vecd(j);
%vpcg=pcg(Ams,Fms,1e-6,1000);
v1Lpcg=LODPCG(ABc,Ams,Fms,zeros(length(Fms),1),PP,QQ,d,600,nc,nc);
 v2Lpcg=LODPCG2L(ABc,Ams,Fms,zeros(length(Fms),1),PP,QQ,d,600,nc,nc);
%v1Lpcg=LODPCG(Ams,Ams,Fms,zeros(length(Fms),1),PP,QQ,d,600,nc,nc);
%v2Lpcg=LODPCG2L(Ams,Ams,Fms,zeros(length(Fms),1),PP,QQ,d,600,nc,nc);
end
end



% %
% vd=[1 2 4 8];
% lenvd=length(vd);
% vncl=[4 9 19];
% vPP=vncl+1;
% lenvncl=length(vncl);
% for k=1:lenvncl
% disp('New Coarse Grid')
% ncl=vncl(k);
% PP=vPP(k);
% Hcl=1/(ncl+1);
% Phc=zeros(ncl^2,nc^2);
% Pc=zeros(nc^2,1);
% Qc=zeros(nc^2,1);
% Xc=zeros(nc^2,1);
% Yc=zeros(nc^2,1);
% for i=1:nc^2
% if mod(i,nc)~=0
% Qc(i)=floor(i/nc)+1;%this formula holds when i is not a multiple of nf
% else
% Qc(i)=i/nc;
% end
% Pc(i)=i-(Qc(i)-1)*nc;
% xi=Pc(i)*H;yi=Qc(i)*H;Xc(i)=xi;Yc(i)=yi;
% end
% for i=1:ncl^2
% for j=1:nc^2
% Phc(i,j)=LagBF(Xc(j),Yc(j),i,Hcl,ncl);
% end
% end
% global Acl;
% global Ncl;
% global Pp;
% Ncl=ncl;
% Acl=Phc*Ams*Phc';
% Pp=Phc;
% 
% for j=1:lenvd
%     d=vd(j);
%  v1Lpcg=LODPCG(Ams,Ams,Fms,zeros(length(Fms),1),PP,QQ,d,600,nc,nc);
%  v2Lpcg=LODPCG2L(Ams,Ams,Fms,zeros(length(Fms),1),PP,QQ,d,600,nc,nc);
% end
% end