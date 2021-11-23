function t=T_hat_Entry(s,r,i,j,k,m,ng,na,nb,p,q,zvector1,zvector2)
    if (2<s)&&(s<p-1)&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector1(k);
            if j==1
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                 t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));       
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
        
    elseif s==1&&r==1
        if i==2
          if ~(p==2&&q==2)
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==2
                t=1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));
            elseif j==4
                t=1/(1+na*zk^-1)*((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);  
            
            else
                disp('index j no valid')
            end
          else
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==3
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==4
                t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
            else
                disp('index j no valid')
            end
          end
        elseif i==3
           if ~(p==2&&q==2) 
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=1/(1+na*zk^-1)*((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);              
            elseif j==2
                zm=zvector1(m);
                t=1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));
             elseif j==3
                t=1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);            
            else
                disp('index j no valid')
            end
           else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
                elseif j==2
                    zm=zvector2(m);
                    t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
                else
                    disp('index j no valid')
                end
           end
        end
    elseif s==2&&r==1&&p~=2
        if i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==1
                t=((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==2
                t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            elseif j==3
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            else
                disp('index j no valid')
            end 
        end
    elseif (2<s)&&(s<p-1)&&r==1
        if i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==1
                t=((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end        
        end
    elseif s==p-1&&r==1
        if i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==3
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==4
                t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==1
                t=((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end        
        end
    elseif s==p&&r==1
        if i==3
            if q~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    t=1/(1+na*zk^-1)*((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);  
                elseif j==3
                    t=1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
                elseif j==4
                    zm=zvector1(m);
                    t=1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
                elseif j==4
                    zm=zvector2(m);
                    t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
                else
                    disp('index j no valid')
                end
            end
        elseif i==4
            if p~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==4
                    t=-1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
                elseif j==3
                    zm=zvector1(m);
                    t=-1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));
                elseif j==2
                    t=1/(1+na*zk^-1)*((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==2
                    t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
                elseif j==3
                    zm=zvector2(m);
                    t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
                else
                    disp('index j no valid')
                end
            end
        end
    elseif s==1&&r==2
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==2
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==3
                t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);            
            else
                disp('index j no valid')
            end
        end   
     elseif s==1&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);            
            else
                disp('index j no valid')
            end
        end   
     elseif s==1&&r==q-1
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            elseif j==2
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            else
                disp('index j no valid')
            end
        end   
     elseif s==1&&r==q
        if i==1
            if q~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    t=-1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
                elseif j==2
                    zm=zvector1(m);
                    t=-1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));
                elseif j==3
                    t=1/(1+na*zk^-1)*((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==2
                    zm=zvector2(m);
                    t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
                elseif j==3
                    t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
                else
                    disp('index j no valid')
                end
            end
        elseif i==2
            if p~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    zm=zvector1(m);
                    t=1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));            
                elseif j==2
                    t=1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
                elseif j==4
                    t=1/(1+na*zk^-1)*((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    zm=zvector2(m);
                    t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
                elseif j==4
                    t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
                else
                    disp('index j no valid')
                end
            end
        end
    elseif s==2&&r==q
        if i==1
            zk=zvector1(k);
            if j==1
               t=-((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                     
            elseif j==3
                t=-((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end         
        elseif i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);                         
            elseif j==4
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==2
                t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            
            else
                disp('index j no valid')
            end 
        end
    elseif (2<s)&&(s<p-1)&&r==q
        if i==1
            zk=zvector1(k);
            if j==1
               t=-((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                     
            elseif j==3
                t=-((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end         
        elseif i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);                         
            elseif j==4
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            elseif j==4
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('index j no valid')
            end
        end
    elseif s==p-1&&r==q
        if i==1
            zk=zvector1(k);
            if j==1
               t=-((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                     
            elseif j==3
                t=-((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end         
        elseif i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            elseif j==4
                t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            elseif j==4
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('index j no valid')
            end
        end   
    elseif s==p&&r==q
        if i==1
            if q~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    t=-1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
                elseif j==3
                    t=1/(1+na*zk^-1)*((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
                elseif j==4
                    zm=zvector1(m);
                    t=-1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));            
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==3
                    t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
                elseif j==4
                    zm=zvector2(m);
                    t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));            
                else
                    disp('index j no valid')
                end
            end
        elseif i==4
            if p~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    zm=zvector1(m);
                    t=-1/(1+na*zk^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/((1+na*zk^-1*tanh(zk))*(1/2-sin(2*zk)/(4*zk)));
                elseif j==2
                    t=1/(1+na*zk^-1)*((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*zk^-1*tanh(zk))*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
                elseif j==4
                    t=-1/(1+na*zk^-1)*((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*zk^-1*tanh(zk))*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);  
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    zm=zvector2(m);
                    t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
                elseif j==2
                    t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            

                else
                    disp('index j no valid')
                end 
            end
        end
    elseif s==p&&r==q-1
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                t=(1+na*zk^-1)*(1-na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            elseif j==4
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=-((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
               t=-((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        end
    elseif s==p&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);            
            elseif j==4
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=-((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
               t=-((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        end
    elseif s==p&&r==2
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==3
                t=(1+na*zk^-1)*(-1+na*tanh((1-2*ng)*zk)*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector2(m);
                t=(1+na*zm^-1)*zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);            
            elseif j==4
                zm=zvector1(m);
                t=zk^(betaf2(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)*zm^-1)*(zk^-1*sin(zk)-zm^-1*cos(zk)*tanh(zm))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1/2-sin(2*zk)/(4*zk)));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=-((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=-4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/((1+na*tanh(zk)*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
               t=-((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/(1+na*tanh(zk)*zk^-1)^2*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        end
    elseif s==2&&r==2
        if i==1
            zk=zvector1(k);
            if j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                     
            elseif j==3
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));       
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
   elseif s==2&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector1(k);
            if j==1
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));       
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
    elseif s==2&&r==q-1
        if i==1
            zk=zvector1(k);
            if j==1
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
            elseif j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end         
    elseif (2<s)&&(s<p-1)&&r==q-1
        if i==1
            zk=zvector1(k);
            if j==1
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
            elseif j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
    elseif s==p-1&&r==q-1
        if i==1
            zk=zvector1(k);
            if j==1
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
            elseif j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
     elseif s==p-1&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector1(k);
            if j==1
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));       
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
     elseif s==p-1&&r==2
        if i==1
            zk=zvector1(k);
            if j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                     
            elseif j==3
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));       
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
        
     elseif (2<s)&&(s<p-1)&&r==2
        if i==1
            zk=zvector1(k);
            if j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                     
            elseif j==3
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));   
            elseif j==2
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==4
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=-((1-na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==2
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));
            elseif j==3
                t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            elseif j==4
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*((-1+(na/zm)^2)*sin(2*ng*zm)+2*na*cos(2*ng*zm)/zm)*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));       
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=((-1+na^2*zk^-2)*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector1(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(1+(na/zm)^2)*sin(zm*(1-2*ng))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(na*tanh(zm)/zm+1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
               t=((1+na^2*zk^-2)*tanh(2*ng*zk)+2*na*zk^-1)/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-4*ng*zk))/(1+exp(-2*zk))*exp(-(1-2*ng)*zk);
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
    else
        disp('something is wrong in indexk, check r and s in if sentence')
    end
    
    if p==3&&q==3&&s==2&&r==2
        if i==1
            zk=zvector1(k);
            if j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                     
            elseif j==3
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=(na*zk^-1*tanh(zk)+1)*(1-na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);                        
            elseif j==2
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            elseif j==4
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(-na*zm^-1*sin(zm*(1-2*ng))+cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));                        
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*zk^-1*(na^2*zm^-2+1)-zm^-1*(-2*na*zk^-1+((na^2*zk^-2-1)*sin(zk)+2*na*zk^-1*cos(zk))/(cosh(zm))))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));            
            elseif j==2
                t=(na*zk^-1*tanh(zk)+1)*(-1+na*zk^-1*tanh((1-2*ng)*zk))/((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*(1+exp(-2*(1-2*ng)*zk))/(1+exp(-2*zk))*exp(-2*ng*zk);
            elseif j==3
                zm=zvector2(m);
                t=4*zk^(betaf(k,na,nb)-1)*(zm^(1-betaf2(m,na,nb))/(1+(zm/zk)^2))*(na*tanh(zk)/zk+1)*(na*zm^-1*sin(zm*(1-2*ng))-cos(zm*(1-2*ng)))*(tanh(zm)*(na*(zm^-2+zk^-2)*sin(zk)-zk^-1*(na^2*zm^-2-1)*cos(zk))+zm^-1*(na^2*zk^-2+1)*sin(zk))/(((1+na^2*zk^-2)*tanh(zk)+2*na*zk^-1)*((zk^-1-na^2*zk^-3)*sin(2*zk)+2*(zk^-2*(na^2+na)+1)-2*na*zk^-2*cos(2*zk)));         
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
    
    end

end