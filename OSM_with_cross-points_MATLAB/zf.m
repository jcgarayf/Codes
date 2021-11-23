function z=zf(n,na,nb)
if nb<0
x1= (1 - sqrt (1 - 4*na*nb ))/(2*nb);
x2 = (-1 - sqrt (1 - 4*na*nb ))/(2*nb);
if abs(x1-pi*floor(x1/pi))<=abs(x1-pi*ceil(x1/pi))
N1=floor(x1/pi);
else
    N1=ceil(x1/pi);
end

if abs(x2-pi*floor(x2/pi))<=abs(x2-pi*ceil(x2/pi))
    N2=floor(x2/pi);
else
    N2=ceil(x2/pi);
end
%disp(N1)
%disp(N2)
%pause
b=1;
xmid = sqrt(-na/nb);
if n<=N1
    z0=(n-1/2)*pi+1e-4;
    
    while b==1
        %disp(z0)
        %pause
        %disp('f0')
        %disp(f1(z0,na,nb))
        z1=z0-f1(z0,na,nb)/df1(z0,na,nb);
        %disp(z1)
        %pause
        if z1<(n-1/2)*pi
            disp('left')
            z0=(z0+(n-1/2)*pi)/2;
        elseif z1>(n+1/2)*pi
            disp(right)
            z0=(z0+(n+1/2)*pi)/2;
        else
            b=0;
        end
    end
    
elseif n>N1&&n-1<=N2
    if (n-1)*pi<xmid
        z0=(n-1+1/2)*pi-1e-4;
    else
        z0=(n-1-1/2)*pi+1e-4;
    end    
    
    while b==1
        %disp(z0)
        %pause
        %disp('f0')
        %disp(f1(z0,na,nb))
        z1=z0-f1(z0,na,nb)/df1(z0,na,nb);
        %disp(z1)
        %pause
        if z1<(n-1-1/2)*pi
            disp('left')
            z0=(z0+(n-1-1/2)*pi)/2;
        elseif z1>(n-1+1/2)*pi
            disp(right)
            z0=(z0+(n-1+1/2)*pi)/2;
        else
            b=0;
        end
    end
    
    
elseif n-1>N2
    z0=(n-2+1/2)*pi-1e-4;
    
    while b==1
        %disp(z0)
        %pause
        %disp('f0')
        %disp(f1(z0,na,nb))
        z1=z0-f1(z0,na,nb)/df1(z0,na,nb);
        %disp(z1)
        %pause
        if z1<(n-2-1/2)*pi
            disp('left')
            z0=(z0+(n-2-1/2)*pi)/2;
        elseif z1>(n-2+1/2)*pi
            disp(right)
            z0=(z0+(n-2+1/2)*pi)/2;
        else
            b=0;
        end
    end
    
else
   disp('zf option not considered') 
end
z=newton1z(z0,na,nb);
elseif nb==0
    x2=na;
    if abs(x2-pi*floor(x2/pi))<=abs(x2-pi*ceil(x2/pi))
    N2=floor(x2/pi);
    else
    N2=ceil(x2/pi);
    end
    
    if n>N2
    z0=(n-1+1/2)*pi-1e-4;
    b=1;
    while b==1
        %disp(z0)
        %pause
        %disp('f0')
        %disp(f1(z0,na,nb))
        z1=z0-f1(z0,na,nb)/df1(z0,na,nb);
        %disp(z1)
        %pause
        if z1<(n-1-1/2)*pi
            disp('left')
            z0=(z0+(n-1-1/2)*pi)/2;
        elseif z1>(n-1+1/2)*pi
            disp(right)
            z0=(z0+(n-1+1/2)*pi)/2;
        else
            b=0;
        end
    end
    else
        z0=(n-1/2)*pi+1e-4;
    end
    z=newton1z(z0,na,nb);
    
else
    z0=(n-1/2)*pi+1e-4;
    b=1;
    while b==1
        %disp(z0)
        %pause
        %disp('f0')
        %disp(f1(z0,na,nb))
        z1=z0-f1(z0,na,nb)/df1(z0,na,nb);
        %disp(z1)
        %pause
        if z1<(n-1/2)*pi
            disp('left')
            z0=(z0+(n-1/2)*pi)/2;
        elseif z1>(n+1/2)*pi
            disp(right)
            z0=(z0+(n+1/2)*pi)/2;
        else
            b=0;
        end
    end
     z=newton1z(z0,na,nb);
    
    %disp('nb>0 not considered')
end


% function z=zf(n,na,nb)
%     %if n<=na/pi;
%     b=1;
%     if (2*n-1)*pi/2<=na    
%         %disp('hey')
%         if (2*n-1)*pi/2<na&&na<n*pi
%             %disp('in between')
%             z0=((2*n-1)*pi/2+na)/2;           
%         else
%             z0=pi*(n-1/4);
%         end
%          while b==1
%                 x0=z0-f1(z0,na)/df1(z0,na);
%                 if x0<=(2*n-1)*pi/2
%                     z0=((2*n-1)*pi/2+z0)/2;
%                 else
%                    z0=x0;
%                    b=0;
%                 end
%          end
%         z=newton1z(z0,na);
%     else
%         %disp('hey')
%         %z0=pi*(n-3/4);
%         if n==1&&na>=1.581
%          %   disp('hey')
%             z0=(2*n-1)*pi/2+0.01;
%         elseif n==1&&na<1.581&&na>pi/2-3e-3
%                 z=(pi/2+na)/2;
%                 return
%         else
%             z0=(2*n-1)*pi/2-0.002;
%         
%         end
%         z=newton1z(z0,na);
%     end
%    
% end



