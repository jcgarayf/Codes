function z=FinePatch(L1c, L4c,Nx,nf)
H=1/(1+Nx);
h=1/(1+nf);

    Hh=round(H/h);

    if mod(L1c,Nx)~=0
        ic1=floor(L1c/Nx)+1;
    else
        ic1=L1c/Nx;
    end
    jc1=L1c-(ic1-1)*Nx;
    
    if mod(L4c,Nx)~=0
        ic4=floor(L4c/Nx)+1;
    else
        ic4=L4c/Nx;
    end
    jc4=L4c-(ic4-1)*Nx;
    
    
%     if1=ic1*Hh;jf1=jc1*Hh;
%     if4=ic4*Hh;jf4=jc4*Hh;
    
    if1=(ic1-1)*Hh;jf1=(jc1-1)*Hh;
    if4=(ic4+1)*Hh;jf4=(jc4+1)*Hh;
    
    wv=(if1:if4)'; wh=jf1:jf4;
    M=(wv-1)*nf*ones(1,length(wh))+ones(length(wv),1)*wh;
    z=reshape(M',1,length(wv)*length(wh));
    %disp(M)
    
end