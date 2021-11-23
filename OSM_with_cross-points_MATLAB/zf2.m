function z=zf2(n,na,nb)

if nb<0
    x1=sqrt(-na/nb);
        if abs(x1-pi*floor(x1/pi))<=abs(x1-pi*ceil(x1/pi))
           N1=floor(x1/pi);
        else
           N1=ceil(x1/pi);
        end
    
     if n<=N1
       z0=(n-1/2)*pi+1e-4;
        b=1;
        while b==1
                %disp(z0)
                %pause
                %disp('f0')
                %disp(f1(z0,na,nb))
                z1=z0-f2(z0,na,nb)/df2(z0,na,nb);
                %disp(z1)
                %pause
                if z1<(n-1/2)*pi
                    disp('left')
                    z0=(z0+(n-1/2)*pi)/2;
                elseif z1>(n+1/2)*pi
                    disp('right')
                    z0=(z0+(n+1/2)*pi)/2;
                else
                    b=0;
                end
        end
        z=newton2z(z0,na,nb);
    else
        z0=(n-1+1/2)*pi-1e-4;
        b=1;
        while b==1
            %disp(z0)
            %pause
            %disp('f0')
            %disp(f1(z0,na,nb))
            z1=z0-f2(z0,na,nb)/df2(z0,na,nb);
            %disp(z1)
            %pause
            if z1<(n-1-1/2)*pi
                disp('left')
                z0=(z0+(n-1-1/2)*pi)/2;
            elseif z1>(n-1+1/2)*pi
                disp('right')
                z0=(z0+(n-1+1/2)*pi)/2;
            else
                b=0;
            end
        end
            z=newton2z(z0,na,nb);
    
    
    end
elseif nb==0
    z0=(n-1/2)*pi+1e-4;
     b=1;
        while b==1
            %disp(z0)
            %pause
            %disp('f0')
            %disp(f1(z0,na,nb))
            z1=z0-f2(z0,na,nb)/df2(z0,na,nb);
            %disp(z1)
            %pause
            if z1<(n-1/2)*pi
                disp('left')
                z0=(z0+(n-1/2)*pi)/2;
            elseif z1>(n+1/2)*pi
                disp('right')
                z0=(z0+(n+1/2)*pi)/2;
            else
                b=0;
            end
        end
            z=newton2z(z0,na,nb);
   %disp('under construction')
else
    z0=(n-1/2)*pi+1e-4;
        b=1;
        while b==1
                %disp(z0)
                %pause
                %disp('f0')
                %disp(f1(z0,na,nb))
                z1=z0-f2(z0,na,nb)/df2(z0,na,nb);
                %disp(z1)
                %pause
                if z1<(n-1/2)*pi
                    disp('left')
                    z0=(z0+(n-1/2)*pi)/2;
                elseif z1>(n+1/2)*pi
                    disp('right')
                    z0=(z0+(n+1/2)*pi)/2;
                else
                    b=0;
                end
        end
        z=newton2z(z0,na,nb);
    %disp('nb>0 not considered')
end
end

%         z0=pi*(n-1/4);
%         f=1;
%         while f==1
%             w=z0-f2(z0,na)/((sec(z0))^2+1/na);%value of z where tangent line of graph of f2 cuts horizontal axis
%             if w>(2*n-1)*pi/2%tangent line must cut horizontal axis on the right of (2*n-1)*pi/2 (so that newton's method gives correct values of z)
%                 %if w-(2*n-1)*pi/2<0.0016
%                  %   z=(2*n-1)*pi/2;
%                   %  return
%                 %end
%                 f=0;
%             else
%                z0=(z0+(2*n-1)*pi/2)/2; 
%             end
%         end
%         z=newton2z(z0,na);
%end
