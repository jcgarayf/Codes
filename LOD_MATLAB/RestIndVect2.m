function v=RestIndVect2(s,r,Nx,p,H)
nps=(1/H-2)/p+1;
csr=1+(nps-1)*(s-1)+(nps-1)*Nx*(r-1);
aux=csr:csr+nps-1;
v=aux;
for i=1:nps-1
    aux=aux+Nx;
    v=[v aux];   
end