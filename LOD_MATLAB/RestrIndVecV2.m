function [zf,zc]=RestrIndVecV2(L,nf,Nx,Ny,H,h)
Hh=round(H/h);    
    if mod(L,Nx)~=0
        ic=floor(L/Nx)+1;
    else
        ic=L/Nx;
    end
    jc=L-(ic-1)*Nx;
    
    I1=ic-1; J1=jc-1;
    I4=ic+1; J4=jc+1;
    
    i1=I1*Hh+1; j1=J1*Hh+1;
    i4=I4*Hh-1; j4=J4*Hh-1;
    
    if I1<1
        I1=1;
    end
    
    if I4>Ny
        I4=Ny;
    end
    
    if J1<1
        J1=1;
    end
    
    if J4>Nx
        J4=Nx;
    end
    
    
    if i1<1
        i1=1;
    end
    
    if i4>nf
        i4=nf;
    end
    
    if j1<1
        j1=1;
    end
    
    if j4>nf
        j4=nf;
    end
    
    wh=j1:j4;
    wv=(i1:i4)';
    
    wH=J1:J4;
    wV=(I1:I4)';
    
    Mf=(wv-1)*nf*ones(1,length(wh))+ones(length(wv),1)*wh;
    Mc=(wV-1)*Nx*ones(1,length(wH))+ones(length(wV),1)*wH;
    
    %zf=reshape(Mf',1,length(wv)*length(wh));
    zf=reshape(Mf',1,length(wv)*length(wh));
    zc=reshape(Mc',1,length(wV)*length(wH));
    %disp(Mf)
    
   
end