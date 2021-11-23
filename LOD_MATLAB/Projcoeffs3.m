

function [Ind,c]=Projcoeffs3(I,J,a,Aint,Aside,h,H,i,j,Nx,Ny,type_sq,sqnum)

ILx1Nxi1l = (h*(h - 3*h*i + 3*H*(1 + I)))/(6*H);
ILx2Nxi1l = (h*(h*(-1 + 3*i) - 3*H*I))/(6*H);
ILx1Nxi2r = -((h*(h + 3*h*i - 3*H*(1 + I)))/(6*H));
ILx2Nxi2r = (h*(h + 3*h*i - 3*H*I))/(6*H);
ILy1Nyi1l = (h*(h - 3*h*j + 3*H*(1 + J)))/(6*H);
ILy2Nyi1l = (h*(h*(-1 + 3*j) - 3*H*J))/(6*H);
ILy1Nyi2r = -((h*(h + 3*h*j - 3*H*(1 + J)))/(6*H));
ILy2Nyi2r = (h*(h + 3*h*j - 3*H*J))/(6*H);


    if I>0&&I<Ny+1&&J>0&&J<Nx+1
    %Global indexes for nodes of interior subdomains
    ind_1=(I-1)*Nx+J;
    ind_2=ind_1+1;
    ind_3=ind_1+Nx;
    ind_4=ind_3+1;
    
    if type_sq==1
        F1 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);
        F2 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);
        F3 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);
        F4 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);       
    elseif type_sq==2
        if sqnum==1
            F1 = ILx1Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
            F2 = ILx2Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
            F3 = ILx1Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
            F4 = ILx2Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
        else
            F1 = ILx1Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
            F2 = ILx2Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
            F3 = ILx1Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
            F4 = ILx2Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
        end
    elseif type_sq==22
        if sqnum==1
            F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi1l;
            F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi1l;
            F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi1l;
            F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi1l;
        else
            F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi2r;
            F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi2r;
            F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi2r;
            F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi2r;
        end
    elseif type_sq==4
        if sqnum==1
            F1 = ILx1Nxi1l*ILy1Nyi1l;
            F2 = ILx2Nxi1l*ILy1Nyi1l;
            F3 = ILx1Nxi1l*ILy2Nyi1l;
            F4 = ILx2Nxi1l*ILy2Nyi1l;
        elseif sqnum==2
            F1 = ILx1Nxi2r*ILy1Nyi1l;
            F2 = ILx2Nxi2r*ILy1Nyi1l;
            F3 = ILx1Nxi2r*ILy2Nyi1l;
            F4 = ILx2Nxi2r*ILy2Nyi1l;
        elseif sqnum==3
            F1 = ILx1Nxi1l*ILy1Nyi2r;
            F2 = ILx2Nxi1l*ILy1Nyi2r;
            F3 = ILx1Nxi1l*ILy2Nyi2r;
            F4 = ILx2Nxi1l*ILy2Nyi2r;
        elseif sqnum==4
            F1 = ILx1Nxi2r*ILy1Nyi2r;
            F2 = ILx2Nxi2r*ILy1Nyi2r;
            F3 = ILx1Nxi2r*ILy2Nyi2r;
            F4 = ILx2Nxi2r*ILy2Nyi2r;
        end
    end
    F=[F1;F2;F3;F4];
    c=Aint\F;
    Ind=[ind_1,ind_2,ind_3,ind_4];
   
    elseif I==0
        if J==0        
                if type_sq==1
                        F4 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);  %Phi4     
                elseif type_sq==2
                    if sqnum==1
                        F4 = ILx2Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
                    else
                        F4 = ILx2Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
                    end
                elseif type_sq==22
                    if sqnum==1
                        F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi1l;
                    else
                        F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi2r;
                    end
                elseif type_sq==4
                    if sqnum==1
                        F4 = ILx2Nxi1l*ILy2Nyi1l;
                    elseif sqnum==2
                        F4 = ILx2Nxi2r*ILy2Nyi1l;
                    elseif sqnum==3
                        F4 = ILx2Nxi1l*ILy2Nyi2r;
                    elseif sqnum==4
                        F4 = ILx2Nxi2r*ILy2Nyi2r;
                    end
                else
                    disp('None of the options')
                    disp(type_sq)
                    disp(sqnum)
                end 
                        c=F4/a;
                        Ind=1;
            
        elseif J==Nx
            if type_sq==1
                F3 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);      
            elseif type_sq==2
                if sqnum==1
                    F3 = ILx1Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
                else
                    F3 = ILx1Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
                end
            elseif type_sq==22
                if sqnum==1
                    F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi1l;
                else
                    F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi2r;
                end
            elseif type_sq==4
                if sqnum==1
                    F3 = ILx1Nxi1l*ILy2Nyi1l;
                elseif sqnum==2
                    F3 = ILx1Nxi2r*ILy2Nyi1l;
                elseif sqnum==3
                    F3 = ILx1Nxi1l*ILy2Nyi2r;
                elseif sqnum==4
                    F3 = ILx1Nxi2r*ILy2Nyi2r;
                end
            end
            c=F3/a;
            Ind=Nx;
        else
           
    if type_sq==1
        F3 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);
        F4 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);       
    elseif type_sq==2
        if sqnum==1
            F3 = ILx1Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
            F4 = ILx2Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
        else
            F3 = ILx1Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
            F4 = ILx2Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
        end
    elseif type_sq==22
        if sqnum==1
            F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi1l;
            F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi1l;
        else
            F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi2r;
            F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi2r;
        end
    elseif type_sq==4
        if sqnum==1
            F3 = ILx1Nxi1l*ILy2Nyi1l;
            F4 = ILx2Nxi1l*ILy2Nyi1l;
        elseif sqnum==2
            F3 = ILx1Nxi2r*ILy2Nyi1l;
            F4 = ILx2Nxi2r*ILy2Nyi1l;
        elseif sqnum==3
            F3 = ILx1Nxi1l*ILy2Nyi2r;
            F4 = ILx2Nxi1l*ILy2Nyi2r;
        elseif sqnum==4
            F3 = ILx1Nxi2r*ILy2Nyi2r;
            F4 = ILx2Nxi2r*ILy2Nyi2r;
        end
    end 
            F=[F3;F4];
            %size(Aside)
            %size(F)
            c=Aside\F;
            Ind=[J J+1]; 
            %pause
        end
        
    elseif (0<I)&&(I<Ny)&&(J==0)
                if type_sq==1
        F2 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);
        F4 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);       
                elseif type_sq==2
                    if sqnum==1
                        F2 = ILx2Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
                        F4 = ILx2Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
                    else
                        F2 = ILx2Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
                        F4 = ILx2Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
                    end
                elseif type_sq==22
                    if sqnum==1
                        F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi1l;
                        F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi1l;
                    else
                        F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi2r;
                        F4 = (ILx2Nxi1l + ILx2Nxi2r)*ILy2Nyi2r;
                    end
                elseif type_sq==4
                    if sqnum==1
                        F2 = ILx2Nxi1l*ILy1Nyi1l;
                        F4 = ILx2Nxi1l*ILy2Nyi1l;
                    elseif sqnum==2
                        F2 = ILx2Nxi2r*ILy1Nyi1l;
                        F4 = ILx2Nxi2r*ILy2Nyi1l;
                    elseif sqnum==3
                        F2 = ILx2Nxi1l*ILy1Nyi2r;
                        F4 = ILx2Nxi1l*ILy2Nyi2r;
                    elseif sqnum==4
                        F2 = ILx2Nxi2r*ILy1Nyi2r;
                        F4 = ILx2Nxi2r*ILy2Nyi2r;
                    end
                end 
            F=[F2;F4];
            c=Aside\F;
            Ind=[1+(I-1)*Nx 1+I*Nx];
            
    elseif (0<I)&&(I<Ny)&&(J==Nx)
                if type_sq==1
                    F1 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);
                    F3 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy2Nyi1l + ILy2Nyi2r);       
                elseif type_sq==2
                    if sqnum==1
                        F1 = ILx1Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
                        F3 = ILx1Nxi1l*(ILy2Nyi1l + ILy2Nyi2r);
                    else
                        F1 = ILx1Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
                        F3 = ILx1Nxi2r*(ILy2Nyi1l + ILy2Nyi2r);
                    end
                elseif type_sq==22
                    if sqnum==1
                        F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi1l;
                        F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi1l;
                    else
                        F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi2r;
                        F3 = (ILx1Nxi1l + ILx1Nxi2r)*ILy2Nyi2r;
                    end
                elseif type_sq==4
                    if sqnum==1
                        F1 = ILx1Nxi1l*ILy1Nyi1l;
                        F3 = ILx1Nxi1l*ILy2Nyi1l;
                    elseif sqnum==2
                        F1 = ILx1Nxi2r*ILy1Nyi1l;
                        F3 = ILx1Nxi2r*ILy2Nyi1l;
                    elseif sqnum==3
                        F1 = ILx1Nxi1l*ILy1Nyi2r;
                        F3 = ILx1Nxi1l*ILy2Nyi2r;
                    elseif sqnum==4
                        F1 = ILx1Nxi2r*ILy1Nyi2r;
                        F3 = ILx1Nxi2r*ILy2Nyi2r;
                    end
                end  
            F=[F1;F3];
            c=Aside\F;
            Ind=[(I-1)*Nx+Nx I*Nx+Nx];             
     elseif I==Ny
        if J==0   
            if type_sq==1
                F2 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);      
            elseif type_sq==2
                if sqnum==1
                    F2 = ILx2Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
                else
                    F2 = ILx2Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
                end
            elseif type_sq==22
                if sqnum==1
                    F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi1l;
                else
                    F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi2r;
                end
            elseif type_sq==4
                if sqnum==1
                    F2 = ILx2Nxi1l*ILy1Nyi1l;
                elseif sqnum==2
                    F2 = ILx2Nxi2r*ILy1Nyi1l;
                elseif sqnum==3
                    F2 = ILx2Nxi1l*ILy1Nyi2r;
                elseif sqnum==4
                    F2 = ILx2Nxi2r*ILy1Nyi2r;
                end
            end          
            c=F2/a;
            Ind=(Ny-1)*Nx+1;
        elseif J==Nx
             if type_sq==1
                F1 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);      
            elseif type_sq==2
                if sqnum==1
                    F1 = ILx1Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
                else
                    F1 = ILx1Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
                end
            elseif type_sq==22
                if sqnum==1
                    F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi1l;
                else
                    F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi2r;
                end
            elseif type_sq==4
                if sqnum==1
                    F1 = ILx1Nxi1l*ILy1Nyi1l;
                elseif sqnum==2
                    F1 = ILx1Nxi2r*ILy1Nyi1l;
                elseif sqnum==3
                    F1 = ILx1Nxi1l*ILy1Nyi2r;
                elseif sqnum==4
                    F1 = ILx1Nxi2r*ILy1Nyi2r;
                end
            end
            c=F1/a;
            Ind=Nx*Ny;
        else
            if type_sq==1
                F1 = (ILx1Nxi1l + ILx1Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);
                F2 = (ILx2Nxi1l + ILx2Nxi2r)*(ILy1Nyi1l + ILy1Nyi2r);       
            elseif type_sq==2
                if sqnum==1
                    F1 = ILx1Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
                    F2 = ILx2Nxi1l*(ILy1Nyi1l + ILy1Nyi2r);
                else
                    F1 = ILx1Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
                    F2 = ILx2Nxi2r*(ILy1Nyi1l + ILy1Nyi2r);
                end
            elseif type_sq==22
                if sqnum==1
                    F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi1l;
                    F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi1l;
                else
                    F1 = (ILx1Nxi1l + ILx1Nxi2r)*ILy1Nyi2r;
                    F2 = (ILx2Nxi1l + ILx2Nxi2r)*ILy1Nyi2r;
                end
            elseif type_sq==4
                if sqnum==1
                    F1 = ILx1Nxi1l*ILy1Nyi1l;
                    F2 = ILx2Nxi1l*ILy1Nyi1l;
                elseif sqnum==2
                    F1 = ILx1Nxi2r*ILy1Nyi1l;
                    F2 = ILx2Nxi2r*ILy1Nyi1l;
                elseif sqnum==3
                    F1 = ILx1Nxi1l*ILy1Nyi2r;
                    F2 = ILx2Nxi1l*ILy1Nyi2r;
                elseif sqnum==4
                    F1 = ILx1Nxi2r*ILy1Nyi2r;
                    F2 = ILx2Nxi2r*ILy1Nyi2r;
                end
             end
            F=[F1;F2];
            c=Aside\F;
            Ind=[(Ny-1)*Nx+J (Ny-1)*Nx+J+1];  
        end
        
   end

end