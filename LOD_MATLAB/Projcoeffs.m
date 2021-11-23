function [Ind,c]=Projcoeffs(I,J,a,Aint,Aside,h,H,i,j,Nx,Ny)


    if I>0&&I<Ny+1&&J>0&&J<Nx+1
    %Global indexes for nodes of interior subdomains
    ind_1=(I-1)*Nx+J;
    ind_2=ind_1+1;
    ind_3=ind_1+Nx;
    ind_4=ind_3+1;
    
    I1ix = (h*((1 + I)*H - h*i))/H;
    I1jy = (h*((1+J)*H - h*j ))/H; 
    I2ix = (h*( h*i-I*H ))/H; 
    I2jy = (h*(h*j - J*H))/H; 
    F=[I1ix*I1jy I2ix*I1jy I1ix*I2jy I2ix*I2jy];
    c=Aint\F;
    Ind=[ind_1,ind_2,ind_3,ind_4];
   
    elseif I==0
        if J==0
            I2ix = (h*( h*i-I*H ))/H; 
            I2jy = (h*(h*j - J*H))/H; 
            c=I2ix*I2jy/a;
            Ind=1;
            
        elseif J==Nx
            I1ix = (h*((1 + I)*H - h*i))/H;
            I2jy = (h*(h*j - J*H))/H; 
            c=I1ix*I2jy/a;
            Ind=Nx;
        else
            I1ix = (h*((1 + I)*H - h*i))/H;
            I2ix = (h*( h*i-I*H ))/H; 
            I2jy = (h*(h*j - J*H))/H; 
            F=[I1ix*I2jy I2ix*I2jy];
            c=Aside\F;
            Ind=[J J+1];          
        end
        
    elseif (0<I)&&(I<Ny)&&(J==0)
            I1jy = (h*((1+J)*H - h*j ))/H; 
            I2ix = (h*( h*i-I*H ))/H; 
            I2jy = (h*(h*j - J*H))/H; 
            F=[I2ix*I1jy I2ix*I2jy];
            c=Aside\F;
            Ind=[1+(I-1)*Nx 1+I*Nx];
            
    elseif (0<I)&&(I<Ny)&&(J==Nx)
            I1ix = (h*((1 + I)*H - h*i))/H;
            I1jy = (h*((1+J)*H - h*j ))/H; 
            I2jy = (h*(h*j - J*H))/H;  
            F=[I1ix*I1jy  I1ix*I2jy];
            c=Aside\F;
            Ind=[(I-1)*Nx+Nx I*Nx+Nx];             
     elseif I==Ny
        if J==0   
            I1jy = (h*((1+J)*H - h*j ))/H; 
            I2ix = (h*( h*i-I*H ))/H;           
            c=I2ix*I1jy/a;
            Ind=(Ny-1)*Nx+1;
        elseif J==Nx
            I1ix = (h*((1 + I)*H - h*i))/H;
            I1jy = (h*((1+J)*H - h*j ))/H; 
            c=I1ix*I1jy/a;
            Ind=Nx*Ny;
        else
            I1ix = (h*((1 + I)*H - h*i))/H; 
            I2ix = (h*( h*i-I*H ))/H; 
            I2jy = (h*(h*j - J*H))/H;  
            F=[I1ix*I2jy I2ix*I2jy]; %%Changed I1ix*I1jy by I2ix*I2jy!!
            c=Aside\F;
            Ind=[(Ny-1)*Nx+J (Ny-1)*Nx+J+1];  
        end
        
   end

end