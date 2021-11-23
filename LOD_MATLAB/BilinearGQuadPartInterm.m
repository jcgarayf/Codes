function I=BilinearGQuadPartInterm(a,b,c,d,xi,yi,xj,yj,h,N)
global HA;
xc=floor(b*h/HA)*HA;%x-coordinate of grid point in the grid defining coefficient matrix
yc=floor(d*h/HA)*HA;


if xc<=a&&yc<=c
   I=BilinearGQuadPart(a,b,c,d,xi,yi,xj,yj,h,N);
elseif xc>a&&yc<=c
   I=BilinearGQuadPart(a,xc,c,d,xi,yi,xj,yj,h,N)+BilinearGQuadPart(xc,b,c,d,xi,yi,xj,yj,h,N);
elseif yc>c&&xc<=a
   I=BilinearGQuadPart(a,b,c,yc,xi,yi,xj,yj,h,N)+BilinearGQuadPart(a,b,yc,d,xi,yi,xj,yj,h,N); 
else
   I=BilinearGQuadPart(a,xc,c,yc,xi,yi,xj,yj,h,N)+BilinearGQuadPart(xc,b,c,yc,xi,yi,xj,yj,h,N)+BilinearGQuadPart(a,xc,yc,d,xi,yi,xj,yj,h,N)+BilinearGQuadPart(xc,b,yc,d,xi,yi,xj,yj,h,N); 
    
end
end