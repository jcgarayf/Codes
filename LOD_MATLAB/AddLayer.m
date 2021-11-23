function z=AddLayer(nf,l1,l4,d)
 Nx=nf;
 Ny=nf;
            if mod(l1,nf)~=0
                i1=floor(l1/nf)+1;%this formula holds when l1 is not a multiple of nf
            else
                i1=l1/nf;
            end
            j1=l1-(i1-1)*nf;  
            
            if mod(l4,nf)~=0
                i4=floor(l4/nf)+1;%this formula holds when l1 is not a multiple of nf
            else
                i4=l4/nf;
            end
            j4=l4-(i4-1)*nf; 
            
            %%
            wb=i1-d; wt=i4+d; wl=j1-d; wr=j4+d;
            
            %%
            if wb<1
                wb=1;
            end
            if wt>Ny
                wt=Ny;
            end
            if wl<1
                wl=1;
            end
            if wr>Nx
                wr=Nx;
            end
            %%
            wv1=(i1:i4)'; wh1=wl:(j1-1);
            M1=(wv1-1)*Nx*ones(1,length(wh1))+ones(length(wv1),1)*wh1;
            
            wv2=(i1:i4)'; wh2=(j4+1):wr;
            M2=(wv2-1)*Nx*ones(1,length(wh2))+ones(length(wv2),1)*wh2;
            
            wv3=(wb:(i1-1))';wh3=wl:wr;
            M3=(wv3-1)*Nx*ones(1,length(wh3))+ones(length(wv3),1)*wh3;
            
            wv4=((i4+1):wt)';wh4=wl:wr;
            M4=(wv4-1)*Nx*ones(1,length(wh4))+ones(length(wv4),1)*wh4;
            %%
            v1=reshape(M1',1,length(wv1)*length(wh1));
            v2=reshape(M2',1,length(wv2)*length(wh2));
            v3=reshape(M3',1,length(wv3)*length(wh3));
            v4=reshape(M4',1,length(wv4)*length(wh4));
            %%
            %z=[v3 v1 v2 v4]; 
            %disp(M4)
            z=[];
            if i1~=1
                z=[z v3];
            end
            if j1~=1
                z=[z v1];
            end
            if j4~=Nx
                z=[z v2];
            end
            if i4~=Ny
                z=[z v4];
            end
            
end