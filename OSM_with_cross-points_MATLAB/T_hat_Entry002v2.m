function t=T_hat_Entry002v2(s,r,i,j,k,m,ng,na,nb,p,q,zvector1,zvector2)
    if (2<s)&&(s<p-1)&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector1(k);
            if j==1
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                 t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
            elseif j==4
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
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
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=(4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
            
            else
                disp('index j no valid')
            end
          else
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==3
                zm=zvector2(m);
                %t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
                %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
            elseif j==4
                %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
                t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);
            else
                disp('index j no valid')
            end
          end
        elseif i==3
           if ~(p==2&&q==2) 
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));            
            elseif j==2
                zm=zvector1(m);
                t=(4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk)));
             elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));            
            else
                disp('index j no valid')
            end
           else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
                    t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);
                elseif j==2
                    zm=zvector2(m);
                    %t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
                    %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                    t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
                else
                    disp('index j no valid')
                end
           end
        end
    elseif s==2&&r==1&&p~=2
        if i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector2(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            else
                disp('index j no valid')
            end 
        end
    elseif (2<s)&&(s<p-1)&&r==1
        if i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end        
        end
    elseif s==p-1&&r==1
        if i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==3
                zm=zvector2(m);
                t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==4
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end        
        end
    elseif s==p&&r==1
        if i==3
            if q~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
                elseif j==3
                    t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
                elseif j==4
                    zm=zvector1(m);
                    t=(4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk)));
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
                    t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);
                elseif j==4
                    zm=zvector2(m);
                    %t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
                    %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                    t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
                else
                    disp('index j no valid')
                end
            end
        elseif i==4
            if p~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==4
                    t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
                elseif j==3
                    zm=zvector1(m);
                    t=(4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk)));
                elseif j==2
                    t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==2
                    %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
                    t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);
                elseif j==3
                    zm=zvector2(m);
                    %t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
                    %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                    t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
                else
                    disp('index j no valid')
                end
            end
        end
    elseif s==1&&r==2&&(p~=2&&q~=2)
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==2
                zm=zvector2(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));            
            else
                disp('index j no valid')
            end
        end   
     elseif s==1&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));            
            else
                disp('index j no valid')
            end
        end   
     elseif s==1&&r==q-1
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                zm=zvector2(m);
                t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            else
                disp('index j no valid')
            end
        end   
     elseif s==1&&r==q
        if i==1
            if q~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
                elseif j==2
                    zm=zvector1(m);
                    t=(4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk)));
                elseif j==3
                    t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==2
                    zm=zvector2(m);
                    %t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
                    %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                    t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
                elseif j==3
                    %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
                    t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);
                else
                    disp('index j no valid')
                end
            end
        elseif i==2
            if p~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    zm=zvector1(m);
                    t=(4*zk^4*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(zk + (na - nb*zk^2)*tanh (zk)));            
                elseif j==2
                    t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*       tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na - nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk)));
                elseif j==4
                    t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(zk + (na - nb*zk^2)*tanh (zk))));
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    zm=zvector2(m);
                    %t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
                    %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                    t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
                elseif j==4
                    %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
                    t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);
                else
                    disp('index j no valid')
                end
            end
        end
    elseif s==2&&r==q&&(p~=2&&q~=2)
        if i==1
            zk=zvector1(k);
            if j==1
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-zk - (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end         
        elseif i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));                         
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                zm=zvector2(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            
            else
                disp('index j no valid')
            end 
        end
    elseif (2<s)&&(s<p-1)&&r==q
        if i==1
            zk=zvector1(k);
            if j==1
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-zk - (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end         
        elseif i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));                         
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==4
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            else
                disp('index j no valid')
            end
        end
    elseif s==p-1&&r==q
        if i==1
            zk=zvector1(k);
            if j==1
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-zk - (na - nb*zk^2)*tanh (zk))));
            else
                disp('Index j no valid')
            end         
        elseif i==2
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                zm=zvector2(m);
                t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==4
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            else
                disp('index j no valid')
            end
        end   
    elseif s==p&&r==q
        if i==1
            if q~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
                elseif j==3
                    t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
                elseif j==4
                    zm=zvector1(m);
                    t=(4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk)));            
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==3
                    %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
                    t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);
                elseif j==4
                    zm=zvector2(m);
                    %t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));            
                    %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                    t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
                else
                    disp('index j no valid')
                end
            end
        elseif i==4
            if p~=2
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
                if j==1
                    zm=zvector1(m);
                    t=(4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*       sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk)));
                elseif j==2
                    t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
                elseif j==4
                    t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));  
                else
                    disp('index j no valid')
                end
            else
                zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
                if j==1
                    zm=zvector2(m);
                   % t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
                   %t=(2*zk^(7/2)*na*(1 + zm*na)*sin(zk)*(zm*cos((-1 + 2*ng)*zm) + na*sin((-1 + 2*ng)*zm))*    (zm + na*tanh(zm)))/(zm^(7/2)*(zk^2 + zm^2)*(1 + zk*na)*(na + cos(zk))*    (zk + na*tanh(zk)));
                   t=-((2*zk^(9/2)*(1 + na*zm)*(zm*cos(zm - 2*ng*zm) + na*sin((-1 + 2*ng)*zm))*    ((-zm)*sin(zk) + zk*cos(zk)*tanh(zm)))/((1 + na*zk)*zm^(7/2)*(zk^2 + zm^2)*    (zk - cos(zk)*sin(zk))*(zk + na*tanh(zk))));
                elseif j==2
                    %t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
                    t=((1 + (na/zk)*tanh((-1 + 2*ng)*zk))/(1 + (na/zk)*tanh(zk)))*((1 + exp(-2*(1 - 2*ng)*zk))/(1 + exp(-2*zk)))*exp(-2*ng*zk);

                else
                    disp('index j no valid')
                end 
            end
        end
    elseif s==p&&r==q-1
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==4
                zm=zvector2(m);
                t= (4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-zk - (na - nb*zk^2)*tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk))));         
            elseif j==4
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
            else
                disp('Index j no valid')
            end
        end
    elseif s==p&&(2<r)&&(r<q-1)
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*       cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*       sin ((1 - 2*ng)*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));            
            elseif j==4
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-zk - (na - nb*zk^2)*tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk))));         
            elseif j==4
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
            else
                disp('Index j no valid')
            end
        end
    elseif s==p&&r==2
        if i==1
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????            
            if j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));            
            else
                disp('index j no valid')
            end
        elseif i==3
            zk=zvector2(k);%%%%%%%%%%WHAT IS ZK HERE?????
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));            
            elseif j==4
                zm=zvector1(m);
                t=(4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*       sin (2*ng*zm))*        ((-zk)*zm +       zm*sech (zm)*(zk*cos (zk) + (na + nb*zk^2)*sin (zk)) -       zk*(na + nb*zk^2)*tanh (zm)))/     (zm^3*(zk^2 + zm^2)*(na +       nb*zm^2)*(2*       zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -       2*zk*(na + nb*zk^2)*cos (2*zk) -            (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*sin (2*zk))*(2*       zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*tanh (zk)));
            else
                disp('index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-zk - (na - nb*zk^2)*tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/(exp (2*ng*      zk)*((1 + exp (-2*zk))*(na -         nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-zk - (na - nb*zk^2)*tanh (zk))));         
            elseif j==4
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 + exp (-2*zk))*(na -       nb*zk^2)*(-zk - (na - nb*zk^2)*tanh (zk)));
            else
                disp('Index j no valid')
            end
        end
    elseif s==2&&r==2&&(p~=2&&q~=2)
        if i==1
            zk=zvector1(k);
            if j==2
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
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
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
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
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
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
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
            elseif j==4
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
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
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
            elseif j==4
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
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
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
            elseif j==4
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
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
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
            elseif j==4
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
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
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(zk^2 - (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
            elseif j==4
                zm=zvector1(m);
                t= -((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(-zk^2 + (na - nb*zk^2)^2)*    tanh ((1 - 2*ng)*zk))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector1(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*nb*zm^3*         cos ((1 - 2*ng)*zm) + (na^2 + zm^2 - nb^2*zm^4)*         sin ((1 - 2*ng)*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
            elseif j==4
               t=(exp ((-1 + 2*ng)*zk)*(1 +       exp (-4*ng*zk))*(-2*       zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*tanh (2*ng*zk)))/     ((1 +       exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*       tanh (zk)));
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
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
         elseif i==2
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            else
                disp('Index j no valid')
            end
        elseif i==3
            zk=zvector1(k);
            if j==1
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na - nb*zk^2)*cosh ((-1 + 2*ng)*zk)*    sech ((1 - 2*ng)*zk)*(zk + (na - nb*zk^2)*tanh ((-1 + 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==2
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==4
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(2*na*zm*cos (2*ng*zm) + (na^2 - zm^2*(1 + nb^2*zm^2))*         sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (2*zk*(na - nb*zk^2) + (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            else
                disp('Index j no valid')
            end
        elseif i==4
            zk=zvector1(k);
            if j==1
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           (zk*zm*(2*na + nb*(zk^2 - zm^2)) +         zm*sech (zm)*((-zk)*(2*na + nb*(zk^2 - zm^2))*            cos (zk) + (-na^2 + na*nb*(-zk^2 + zm^2) +               zk^2*(1 + nb^2*zm^2))*sin (zk)) +                       zk*(na^2 + (1 - nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*         tanh (zm)))/(zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na + nb*zm^2)*           (2*zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*         cos (2*zk) - (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*           (-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));            
            elseif j==2
                t=((1 + exp (-2*(1 - 2*ng)*zk))*(na -       nb*zk^2)*(-zk + (na - nb*zk^2)*tanh ((1 - 2*ng)*zk)))/     (exp (2*ng*      zk)*((1 +         exp (-2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));
            elseif j==3
                zm=zvector2(m);
                t=-((4*zk^4*(na - nb*zk^2)*(na + nb*zk^2)*(-2*na*zm*         cos (2*ng*zm) - (na^2 - zm^2*(1 + nb^2*zm^2))*sin (2*ng*zm))*           ((-nb)*zk*zm*(zk^2 + zm^2)*sech (zm) +         zm*(nb*zk*(zk^2 + zm^2)*            cos (zk) - (na^2 + na*nb*(zk^2 - zm^2) +               zk^2*(1 - nb^2*zm^2))*sin (zk)) +               (zk*(na^2 - (1 + nb^2*zk^2)*zm^2 + na*nb*(zk^2 - zm^2))*            cos (zk) - na*(zk^2 + zm^2)*sin (zk))*tanh (zm)))/        (zm^3*(zk^2 + zm^2)*(na - nb*zm^2)*(na +         nb*zm^2)*(2*         zk*(na*(1 + na) + (1 + nb + 2*na*nb)*zk^2 + nb^2*zk^4) -         2*zk*(na + nb*zk^2)*cos (2*zk) -               (na + zk + nb*zk^2)*(na + zk*(-1 + nb*zk))*         sin (2*zk))*(-2*zk*(na - nb*zk^2) - (zk^2 + (na - nb*zk^2)^2)*         tanh (zk))));         
            else
                disp('Index j no valid')
            end
        else
            disp(i)
            disp('value of i not valid')
        end
    
    end

end