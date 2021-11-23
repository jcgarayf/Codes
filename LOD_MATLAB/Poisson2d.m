clear
Nx=3;
Ny=3;
H=1/(Nx+1);
A = laplacian2((Nx));
F=ones((Nx)^2,1);

u=((1/H^2)*A)\F;
for i=1:Nx
    a=(i-1)*(Nx)+1;
    b=(i-1)*(Nx)+Nx;
    M(i,:)=u(a:b)';
end
M2=zeros(Nx+2,Nx+2);
M2(2:Nx+1,2:Nx+1)=M;
figure
x=linspace(0,1,Nx+2);
y=linspace(0,1,Ny+2);
figure;
surf(x,y,M2)