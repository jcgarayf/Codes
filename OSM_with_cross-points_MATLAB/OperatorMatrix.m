clear
%j=0;
p=5;
q=5;
kmax=5;
nb=0;
%n=p*q*kmax*4;disp(n);
n=(2*(4+3*(p-2))+(6+4*(p-2))*(q-2))*kmax;disp(n);pause;
T_hat=sparse(n,n);
%na=1.628571428571429;
%na=2.242105263157895;
%na=3.969696969696970
%na=2.202020202020202;
%na=1.777776;
%na=8;
%na=2.55;
%na=3.686868686868687;
%na=2.414141414141414;
%na=2.4122;
%na=5.5960;
%na=5.0303;
na= 2.54;%2.6610;%1.8305;%2.3051;%3.0690;%2.4237;%1.356;
ng=0.01;
%row=4;
%l=4;
%j=(4+3*(p-2))*kmax+(row-2)*(6+4*(p-2))*kmax;
%j=17*kmax;
zvector1=zeros(1,kmax);
zvector2=zeros(1,kmax);
for i=1:kmax
zvector1(i)=zf(i,na,nb);
zvector2(i)=zf2(i,na,nb);
end
j=0;
for r=1:q
     for s=1:p
        i=indexi(s,r,p,q);
        for w=1:length(i)%complete
            v1=indexk(s,r,i(w),p,q);
            v2=indexm(s,r,i(w),p,q);
            ss=sf(s,i(w));%Function To do
            rr=rf(r,i(w));%Function To do
            for k=1:kmax
                j=j+1;disp(j);
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
%disp(abs(max(eigs(abs(T_hat),1))))
k=2;
opts.tol=1e-3;
R=max(eigs(abs(T_hat),k,'LM',opts));
%disp(R)
%norm(full(T_hat),2)
%norm(full(T_hat),Inf)