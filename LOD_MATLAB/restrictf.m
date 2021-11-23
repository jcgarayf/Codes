function l=restrictf(Nx,Ny,s,r,P,Q)
if 1<s&&s<P&&1<r&&r<Q
    L=(ceil((r-1)*Ny/Q)-1)*Nx+ceil((s-1)*Nx/P);
    R=(ceil((r-1)*Ny/Q)-1)*Nx+floor(s*Nx/P+1);
elseif s==1&&r==1
    L=1;
    R=floor(Nx/P+1);
elseif r==1&&1<s&&s<P
    L=ceil((s-1)*Nx/P);
    R=floor(s*Nx/P+1);
elseif s==P&&r==1
    L=ceil((P-1)*Nx/P);
    R=Nx;
elseif s==1&&1<r&&r<Q
    L=(ceil((r-1)*Ny/Q)-1)*Nx+1;
    R=(ceil((r-1)*Ny/Q)-1)*Nx+floor(s*Nx/P+1);
elseif s==P&&1<r&&r<Q
    L=(ceil((r-1)*Ny/Q)-1)*Nx+ceil((s-1)*Nx/P);
    R=ceil((r-1)*Ny/Q)*Nx;
elseif s==1&&r==Q
    L=(ceil((r-1)*Ny/Q)-1)*Nx+1;
    R=(ceil((r-1)*Ny/Q)-1)*Nx+floor(s*Nx/P+1);
elseif 1<s&&s<P&&r==Q
    L=(ceil((r-1)*Ny/Q)-1)*Nx+ceil((s-1)*Nx/P);
    R=(ceil((r-1)*Ny/Q)-1)*Nx+floor(s*Nx/P+1);
elseif s==P&&r==Q
    L=(ceil((r-1)*Ny/Q)-1)*Nx+ceil((s-1)*Nx/P);
    R=ceil((r-1)*Ny/Q)*Nx;
end

if r==1
    ALev=floor(Ny/Q+1)-1;
elseif 1<r&&r<Q
    ALev=floor(2*Ny/Q+1)-ceil(Ny/Q);
elseif r==Q
    ALev=Ny-ceil((Q-1)*Ny/Q);
end

v=L:R;
l=v;
for j=1:ALev
    v=v+Nx;
    l=[l v];
end
end


%         if s==1&&r==1
%           
%             
%             
%             L=1;
%             R=floor(Nx/p+1);
%             v=L:R;
%             l=v;
%             for j=2:floor(Nx/p+1)
              %  v=v+Nx;
               % l=[l v];
            %end
      
      
    
    