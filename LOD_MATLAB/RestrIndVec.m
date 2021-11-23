function y=RestrIndVec(L,nf,Nx,Ny,R,H,h)
    if mod(L,Nx)~=0
        ic=floor(L/Nx)+1;
    else
        ic=L/Nx;
    end
    jc=L-(ic-1)*Nx;
    
    if ic>1&&ic<Ny&&jc>1&&jc<Nx
        i1=round((ic-2)*H/h)+1; j1=round((jc-2)*H/h)+1;
        l=(i1-1)*nf+j1;
        v=l:l+4*R-2;
        y=v;
        for k=1:4*R-2
            v=v+nf;
            y=[y v];
        end
        
    elseif ic==1&&jc==1%Left-Bottom corner point
        i1=round((ic-1)*H/h)+1; j1=round((jc-1)*H/h)+1;
        l=(i1-1)*nf+j1;
        v=l:l+3*R-2;
        y=v;
        for k=1:3*R-2
            v=v+nf;
            y=[y v];
        end
    elseif ic==1&&jc>1&&jc<Nx%Bottom-no corners
        i1=round((ic-1)*H/h)+1; j1=round((jc-2)*H/h)+1;
        l=(i1-1)*nf+j1;
        v=l:l+4*R-2;
        y=v;
        for k=1:3*R-2
            v=v+nf;
            y=[y v];
        end
    elseif ic==1&&jc==Nx%Bottom-right corner
       i1=round((ic-1)*H/h)+1; j1=round((jc-2)*H/h)+1;
       l=(i1-1)*nf+j1;
       v=l:l+3*R-2;
       y=v;
        for k=1:3*R-2
            v=v+nf;
            y=[y v];
        end
    elseif jc==1&&ic>1&&ic<Ny%Left-no corners
       i1=round((ic-2)*H/h)+1; j1=round((jc-1)*H/h)+1;
       l=(i1-1)*nf+j1;
       v=l:l+3*R-2;
       y=v;
        for k=1:4*R-2
            v=v+nf;
            y=[y v];
        end
    elseif jc==Nx&&ic>1&&ic<Ny%Right-no corners
       i1=round((ic-2)*H/h)+1; j1=round((jc-2)*H/h)+1;
       l=(i1-1)*nf+j1;
       v=l:l+3*R-2;
       y=v;
        for k=1:4*R-2
            v=v+nf;
            y=[y v];
        end
    elseif ic==Ny&&jc>1&&jc<Nx%Top-no corners
        i1=round((ic-2)*H/h)+1; j1=round((jc-2)*H/h)+1;
       l=(i1-1)*nf+j1;
       v=l:l+4*R-2;
       y=v;
        for k=1:3*R-2
            v=v+nf;
            y=[y v];
        end
    elseif ic==Ny&&jc==1%Top-left corner
          i1=round((ic-2)*H/h)+1; j1=round((jc-1)*H/h)+1;
       l=(i1-1)*nf+j1;
       v=l:l+3*R-2;
       y=v;
        for k=1:3*R-2
            v=v+nf;
            y=[y v];
        end
    elseif ic==Ny&&jc==Nx% Top-right corner
             i1=round((ic-2)*H/h)+1; j1=round((jc-2)*H/h)+1;
       l=(i1-1)*nf+j1;
       v=l:l+3*R-2;
       y=v;
        for k=1:3*R-2
            v=v+nf;
            y=[y v];
            
        end
    end
        
        
end