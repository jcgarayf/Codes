function R=SRNorms(na,nb,ng,p,q,kmax)
j=0;
%p=5;
%q=5;
%kmax=20;
%n=p*q*kmax*4;disp(n);
n=(2*(4+3*(p-2))+(6+4*(p-2))*(q-2))*kmax;%disp(n);pause;
T_hat=sparse(n,n);
%na=0.15;
%ng=0.01;
zvector1=zeros(1,kmax);
zvector2=zeros(1,kmax);
for i=1:kmax
zvector1(i)=zf(i,na,nb);
zvector2(i)=zf2(i,na,nb);
end

if p~=2&&q~=2&&p~=3&&q~=3
for r=1:q
    for s=1:p
        i=indexi(s,r,p,q);
        for w=1:length(i)%complete
            v1=indexk(s,r,i(w),p,q);
            v2=indexm(s,r,i(w),p,q);
            ss=sf(s,i(w));%Function To do
            rr=rf(r,i(w));%Function To do
            for k=1:kmax
                j=j+1;%disp(j);
                for ii=1:length(v1)
                    T_hat(j,Entry_col_index(ss,rr,v1(ii),k,kmax,p,q))=T_hat_Entry002v2(s,r,i(w),v1(ii),k,k,ng,na,nb,p,q,zvector1,zvector2);
                end
                for ii=1:length(v2)
                    for m=1:kmax
                        T_hat(j,Entry_col_index(ss,rr,v2(ii),m,kmax,p,q))=T_hat_Entry002v2(s,r,i(w),v2(ii),k,m,ng,na,nb,p,q,zvector1,zvector2); 
                    end
                end
            end
        end
    end
end
else
   for r=1:q
    for s=1:p
        i=indexi(s,r,p,q);
        for w=1:length(i)%complete
            v1=indexk(s,r,i(w),p,q);
            v2=indexm(s,r,i(w),p,q);
            ss=sf(s,i(w));%Function To do
            rr=rf(r,i(w));%Function To do
            for k=1:kmax
                j=j+1;%disp(j);
                for ii=1:length(v1)
                    T_hat(j,Entry_col_index(ss,rr,v1(ii),k,kmax,p,q))=T_hat_Entry(s,r,i(w),v1(ii),k,k,ng,na,nb,p,q,zvector1,zvector2);
                end
                for ii=1:length(v2)
                    for m=1:kmax
                        T_hat(j,Entry_col_index(ss,rr,v2(ii),m,kmax,p,q))=T_hat_Entry(s,r,i(w),v2(ii),k,m,ng,na,nb,p,q,zvector1,zvector2); 
                    end
                end
            end
        end
    end
   end
 
end

k=1;
opts.tol=1e-4;
R=abs(eigs(T_hat,k,'LM',opts));
%R=abs(eigs(abs(T_hat),k,'LM',opts));

%R=max(abs(eigs(T_hat)));
%disp(eigs(T_hat))
%R=max(abs(eigs(abs(T_hat),1)));
%R=abs(max(eigs(abs(T_hat))));
%R(1)=abs(max(eigs(T_hat))); 
%R(2)=norm(full(T_hat),2);
%R(3)=norm(full(T_hat),Inf);
end