function I=BilinearGQuadPart(a,b,c,d,xi,yi,xj,yj,h,N)
xm=(a+b)/2;
ym=(c+d)/2;
% nvx=length(vx);
% nvy=length(vy);
% F=zeros(nvx,nvy);
F=zeros(N,N);
[vx,w]=lgwt(N,a,b);
[vy,w2]=lgwt(N,c,d);


for k=1:N
    for l=1:N
        x=vx(k);
        y=vy(l);
        F(k,l)=Df(xm,xj,h)*L1df(y,yj,h)*(A11f(xm,ym)*Df(xm,xi,h)*L1df(y,yi,h)+A12f(xm,ym)*Df(ym,yi,h)*L1df(x,xi,h))+Df(ym,yj,h)*L1df(x,xj,h)*(A21f(xm,ym)*Df(xm,xi,h)*L1df(y,yi,h)+A22f(xm,ym)*Df(ym,yi,h)*L1df(x,xi,h));
    end
end

I=w'*F*w2;
end