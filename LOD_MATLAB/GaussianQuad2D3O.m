% function z=GaussianQuad2D3O(l,a,b,c,d,H,nigp) 
%     F=zeros(3,3);
%     x=[-sqrt(3/5) 0 sqrt(3/5)];%y=x;
%     w=[5/9;8/9;5/9];
%     
%     sx=(b-a)/2*x+(a+b)/2;
%     sy=(d-c)/2*x+(c+d)/2;
%     
%     for i=1:3
%         for j=1:3
%             F(i,j)=sx(i)^2*sy(j)^2;%f(sx(i),sy(j))*LagBF(sx(i),sy(j),l,H,nigp);
%         end
%     end
%     z=(b-a)*(d-c)/4*(w'*(F*w));
% end


function z=GaussianQuad2D3O(l,a,b,c,d,H,nigp) 
    N=3;%number of gaussian nodes---Probably we can use much less nodes by spliting the intervals of integration in each direction into two parts
    F=zeros(N,N);
    [x,w]=lgwt(N,a,b);
    [y,w2]=lgwt(N,c,d);
    
    for i=1:N
        for j=1:N
            F(i,j)=f(x(i),y(j))*LagBF(x(i),y(j),l,H,nigp);
        end
    end
    %disp(F)
    z=w'*F*w2;
end

