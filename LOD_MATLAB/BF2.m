function y=BF2(p_i,q_i,xl,yl,case_sqi,a11,a12,a21,a22,h,H)
xi=p_i*h;
yi=q_i*h;
if abs(xi-xl)>H+h/2 || abs(yi-yl)>H+h/2
    y=0;
else
        if case_sqi==1
            if xl<xi&&yl<yi%node 1
                    y1 = (-(1/12))*   h/H^2*(3*a21(p_i,q_i)*h + 2*a22(p_i,q_i)*h + 6*a21(p_i,q_i)*H + 6*a22(p_i,q_i)*H - 6*a21(p_i,q_i)*xi - 6*a22(p_i,q_i)*xi +      6*a21(p_i,q_i)*xl + 6*a22(p_i,q_i)*xl + 3*a12(p_i,q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i,q_i)*(h + 3*(H - yi + yl))); %Integ. interval 1
                    y2 = (1/12)*   h/H^2*(-3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl - 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl))); %Integ. interval 2
                    y3 = (1/12)*   h/H^2*(-3*a12(p_i+1, q_i)*h - 3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl + 6*a12(p_i+1, q_i)*(H - yi + yl) +      2*a11(p_i+1, q_i)*(h - 3*(H - yi + yl))); %Integ. interval 3
                    y4 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i+1)*h - 3*a12(p_i+1, q_i+1)*h - 3*a21(p_i+1, q_i+1)*h - 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H -      6*a21(p_i+1, q_i+1)*xi - 6*a22(p_i+1, q_i+1)*xi + 6*a21(p_i+1, q_i+1)*xl + 6*a22(p_i+1, q_i+1)*xl +      6*a11(p_i+1, q_i+1)*(H - yi + yl) + 6*a12(p_i+1, q_i+1)*(H - yi + yl)); %Integ. interval 4
                    y=y1+y2+y3+y4;
            elseif xl>xi&&yl<yi%node 2
                    y1 = (1/12)*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h - 6*a21(p_i, q_i)*H - 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl))); 
                    y2 = (1/12)*   h/H^2*(3*a21(p_i, q_i+1)*h - 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H + 6*a21(p_i, q_i+1)*xi - 6*a22(p_i, q_i+1)*xi -      6*a21(p_i, q_i+1)*xl + 6*a22(p_i, q_i+1)*xl + 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) -      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl))); 
                    y3 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i)*h + 3*a12(p_i+1, q_i)*h + 3*a21(p_i+1, q_i)*h - 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H -      6*a21(p_i+1, q_i)*xi + 6*a22(p_i+1, q_i)*xi + 6*a21(p_i+1, q_i)*xl - 6*a22(p_i+1, q_i)*xl +      6*a11(p_i+1, q_i)*(H - yi + yl) - 6*a12(p_i+1, q_i)*(H - yi + yl)); 
                    y4 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 2*a11(p_i+1, q_i+1)*(h - 3*(H - yi + yl)) +      3*a12(p_i+1, q_i+1)*(h - 2*(H - yi + yl))); 
                    y=y1+y2+y3+y4;
            elseif xl<xi&&yl>yi%node 3
                    y1 = (1/12)*   h/H^2*(-2*a11(p_i, q_i)*h - 3*a12(p_i, q_i)*h - 3*a21(p_i, q_i)*h - 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H +      6*a21(p_i, q_i)*xi + 6*a22(p_i, q_i)*xi - 6*a21(p_i, q_i)*xl - 6*a22(p_i, q_i)*xl +      6*a11(p_i, q_i)*(H + yi - yl) + 6*a12(p_i, q_i)*(H + yi - yl)); 
                    y2 = (1/12)*   h/H^2*(-3*a12(p_i, q_i+1)*h - 3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h - 6*a21(p_i, q_i+1)*H + 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl + 2*a11(p_i, q_i+1)*(h - 3*(H + yi - yl)) +      6*a12(p_i, q_i+1)*(H + yi - yl)); 
                    y3 = (1/12)*   h/H^2*(-3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h + 6*a21(p_i+1, q_i)*H - 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -     6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl - 3*a12(p_i+1, q_i)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i)*(h + 3*(H + yi - yl))); 
                    y4 = (-(1/12))*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 3*a12(p_i+1, q_i+1)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i+1)*(h + 3*(H + yi - yl))); 
                    y=y1+y2+y3+y4;
            elseif xl>xi&&yl>yi%node 4
                    y1 = (-(1/12))*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +     6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl))); 
                    y2 = (1/12)*   h/H^2*(-3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +     6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl - 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl))); 
                    y3 = (1/12)*   h/H^2*(-3*a12(p_i+1, q_i)*h - 3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl + 6*a12(p_i+1, q_i)*(H - yi + yl) +      2*a11(p_i+1, q_i)*(h - 3*(H - yi + yl))); 
                    y4 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i+1)*h - 3*a12(p_i+1, q_i+1)*h - 3*a21(p_i+1, q_i+1)*h - 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H -      6*a21(p_i+1, q_i+1)*xi - 6*a22(p_i+1, q_i+1)*xi + 6*a21(p_i+1, q_i+1)*xl + 6*a22(p_i+1, q_i+1)*xl +      6*a11(p_i+1, q_i+1)*(H - yi + yl) + 6*a12(p_i+1, q_i+1)*(H - yi + yl)); 
                    y=y1+y2+y3+y4;
            end
        elseif case_sqi==2
                if xl<xi&&yl<yi%node 1
                    y1 = (-(1/12))*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl))); 
                    y3 = (1/12)*   h/H^2*(-3*a12(p_i+1, q_i)*h - 3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl + 6*a12(p_i+1, q_i)*(H - yi + yl) +      2*a11(p_i+1, q_i)*(h - 3*(H - yi + yl))); 
                    y=y1+y3;
                elseif abs(xl-xi)<eps&&yl<yi%node 2
                    y1 = (1/12)*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h - 6*a21(p_i, q_i)*H - 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +     6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl)));
                    y3 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i)*h + 3*a12(p_i+1, q_i)*h + 3*a21(p_i+1, q_i)*h - 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H -      6*a21(p_i+1, q_i)*xi + 6*a22(p_i+1, q_i)*xi + 6*a21(p_i+1, q_i)*xl - 6*a22(p_i+1, q_i)*xl +      6*a11(p_i+1, q_i)*(H - yi + yl) - 6*a12(p_i+1, q_i)*(H - yi + yl));
                    y2 = (1/12)*   h/H^2*(-3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl - 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl)));
                    y4 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i+1)*h - 3*a12(p_i+1, q_i+1)*h - 3*a21(p_i+1, q_i+1)*h - 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H -      6*a21(p_i+1, q_i+1)*xi - 6*a22(p_i+1, q_i+1)*xi + 6*a21(p_i+1, q_i+1)*xl + 6*a22(p_i+1, q_i+1)*xl +     6*a11(p_i+1, q_i+1)*(H - yi + yl) + 6*a12(p_i+1, q_i+1)*(H - yi + yl));
                    y=y1+y2+y3+y4;
                elseif xl<xi&&yl>yi%node 3
                    y1 = (1/12)*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 2*a11(p_i, q_i)*(h - 3*(H + yi - yl)) +     3*a12(p_i, q_i)*(h - 2*(H + yi - yl)));
                    y3 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i)*h - 2*a22(p_i+1, q_i)*h + 6*a21(p_i+1, q_i)*H - 6*a22(p_i+1, q_i)*H - 6*a21(p_i+1, q_i)*xi + 6*a22(p_i+1, q_i)*xi +      6*a21(p_i+1, q_i)*xl - 6*a22(p_i+1, q_i)*xl + 3*a12(p_i+1, q_i)*(h + 2*(H + yi - yl)) -      2*a11(p_i+1, q_i)*(h + 3*(H + yi - yl)));
                    y=y1+y3;
                elseif abs(xl-xi)<eps&&yl>yi%node 4
                    y1 = (1/12)*   h/H^2*(-2*a11(p_i, q_i)*h - 3*a12(p_i, q_i)*h - 3*a21(p_i, q_i)*h - 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H +      6*a21(p_i, q_i)*xi + 6*a22(p_i, q_i)*xi - 6*a21(p_i, q_i)*xl - 6*a22(p_i, q_i)*xl +      6*a11(p_i, q_i)*(H + yi - yl) + 6*a12(p_i, q_i)*(H + yi - yl));
                    y3 = (1/12)*   h/H^2*(-3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h + 6*a21(p_i+1, q_i)*H - 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl - 3*a12(p_i+1, q_i)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i)*(h + 3*(H + yi - yl)));
                    y2 = (1/12)*   h/H^2*(-2*a11(p_i, q_i+1)*h + 3*a12(p_i, q_i+1)*h + 3*a21(p_i, q_i+1)*h - 2*a22(p_i, q_i+1)*h - 6*a21(p_i, q_i+1)*H + 6*a22(p_i, q_i+1)*H +     6*a21(p_i, q_i+1)*xi - 6*a22(p_i, q_i+1)*xi - 6*a21(p_i, q_i+1)*xl + 6*a22(p_i, q_i+1)*xl +      6*a11(p_i, q_i+1)*(H + yi - yl) - 6*a12(p_i, q_i+1)*(H + yi - yl));
                    y4 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h - 6*a21(p_i+1, q_i+1)*H - 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 3*a12(p_i+1, q_i+1)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i+1)*(h + 3*(H + yi - yl)));
                    y=y1+y2+y3+y4;
                elseif xl>xi&&yl<yi%node 5
                    y2 = (1/12)*   h/H^2*(3*a21(p_i, q_i+1)*h - 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H + 6*a21(p_i, q_i+1)*xi - 6*a22(p_i, q_i+1)*xi -      6*a21(p_i, q_i+1)*xl + 6*a22(p_i, q_i+1)*xl + 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) -     2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl)));
                    y4 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 2*a11(p_i+1, q_i+1)*(h - 3*(H - yi + yl)) +     3*a12(p_i+1, q_i+1)*(h - 2*(H - yi + yl)));
                    y=y2+y4;
                elseif xl>xi&&yl>yi%node 6
                    y2 = (1/12)*   h/H^2*(-3*a12(p_i, q_i+1)*h - 3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h - 6*a21(p_i, q_i+1)*H + 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl + 2*a11(p_i, q_i+1)*(h - 3*(H + yi - yl)) +      6*a12(p_i, q_i+1)*(H + yi - yl));
                    y4 = (-(1/12))*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 3*a12(p_i+1, q_i+1)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i+1)*(h + 3*(H + yi - yl)));
                    y=y2+y4;
                end
        elseif case_sqi==22
            if xl<xi&&yl<yi%node 1
                y1 = (-(1/12))*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl))); 
                y2 = (1/12)*   h/H^2*(-3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl - 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl))); 
                y=y1+y2;
            elseif xl>xi&&yl<yi%node 2
                y1 = (1/12)*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h - 6*a21(p_i, q_i)*H - 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl))); 
                y2 = (1/12)*   h/H^2*(3*a21(p_i, q_i+1)*h - 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H + 6*a21(p_i, q_i+1)*xi - 6*a22(p_i, q_i+1)*xi -      6*a21(p_i, q_i+1)*xl + 6*a22(p_i, q_i+1)*xl + 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) -      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl))); 
                y=y1+y2;
            elseif xl<xi&&abs(yl-yi)<eps%node 3
                y1 = (1/12)*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 2*a11(p_i, q_i)*(h - 3*(H + yi - yl)) +      3*a12(p_i, q_i)*(h - 2*(H + yi - yl))); 
                y2 = (1/12)*   h/H^2*(-2*a11(p_i, q_i+1)*h + 3*a12(p_i, q_i+1)*h + 3*a21(p_i, q_i+1)*h - 2*a22(p_i, q_i+1)*h - 6*a21(p_i, q_i+1)*H + 6*a22(p_i, q_i+1)*H +      6*a21(p_i, q_i+1)*xi - 6*a22(p_i, q_i+1)*xi - 6*a21(p_i, q_i+1)*xl + 6*a22(p_i, q_i+1)*xl +      6*a11(p_i, q_i+1)*(H + yi - yl) - 6*a12(p_i, q_i+1)*(H + yi - yl)); 
                y3 = (1/12)*   h/H^2*(-3*a12(p_i+1, q_i)*h - 3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl + 6*a12(p_i+1, q_i)*(H - yi + yl) +     2*a11(p_i+1, q_i)*(h - 3*(H - yi + yl))); 
                y4 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i+1)*h - 3*a12(p_i+1, q_i+1)*h - 3*a21(p_i+1, q_i+1)*h - 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H -      6*a21(p_i+1, q_i+1)*xi - 6*a22(p_i+1, q_i+1)*xi + 6*a21(p_i+1, q_i+1)*xl + 6*a22(p_i+1, q_i+1)*xl +      6*a11(p_i+1, q_i+1)*(H - yi + yl) + 6*a12(p_i+1, q_i+1)*(H - yi + yl)); 
                y=y1+y2+y3+y4;
            elseif xl>xi&&abs(yl-yi)<eps%node 4
                y1 = (1/12)*   h/H^2*(-2*a11(p_i, q_i)*h - 3*a12(p_i, q_i)*h - 3*a21(p_i, q_i)*h - 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H +      6*a21(p_i, q_i)*xi + 6*a22(p_i, q_i)*xi - 6*a21(p_i, q_i)*xl - 6*a22(p_i, q_i)*xl +      6*a11(p_i, q_i)*(H + yi - yl) + 6*a12(p_i, q_i)*(H + yi - yl)); 
                y2 = (1/12)*   h/H^2*(-3*a12(p_i, q_i+1)*h - 3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h - 6*a21(p_i, q_i+1)*H + 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl + 2*a11(p_i, q_i+1)*(h - 3*(H + yi - yl)) +      6*a12(p_i, q_i+1)*(H + yi - yl)); 
                y3 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i)*h + 3*a12(p_i+1, q_i)*h + 3*a21(p_i+1, q_i)*h - 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H -      6*a21(p_i+1, q_i)*xi + 6*a22(p_i+1, q_i)*xi + 6*a21(p_i+1, q_i)*xl - 6*a22(p_i+1, q_i)*xl +      6*a11(p_i+1, q_i)*(H - yi + yl) - 6*a12(p_i+1, q_i)*(H - yi + yl)); 
                y4 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 2*a11(p_i+1, q_i+1)*(h - 3*(H - yi + yl)) +      3*a12(p_i+1, q_i+1)*(h - 2*(H - yi + yl))); 
                y=y1+y2+y3+y4;
            elseif xl<xi&&yl>yi%node 5
                y3 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i)*h - 2*a22(p_i+1, q_i)*h + 6*a21(p_i+1, q_i)*H - 6*a22(p_i+1, q_i)*H - 6*a21(p_i+1, q_i)*xi + 6*a22(p_i+1, q_i)*xi +      6*a21(p_i+1, q_i)*xl - 6*a22(p_i+1, q_i)*xl + 3*a12(p_i+1, q_i)*(h + 2*(H + yi - yl)) -      2*a11(p_i+1, q_i)*(h + 3*(H + yi - yl))); 
                y4 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h - 6*a21(p_i+1, q_i+1)*H - 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 3*a12(p_i+1, q_i+1)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i+1)*(h + 3*(H + yi - yl))); 
                y=y3+y4;
            elseif xl>xi&&yl>yi%node 6
                y3 = (1/12)*   h/H^2*(-3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h + 6*a21(p_i+1, q_i)*H - 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl - 3*a12(p_i+1, q_i)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i)*(h + 3*(H + yi - yl))); 
                y4 = (-(1/12))*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 3*a12(p_i+1, q_i+1)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i+1)*(h + 3*(H + yi - yl))); 
                y=y3+y4;
            end
        elseif case_sqi==4
           if xl<xi&&yl<yi%node 1
                y = (-(1/12))*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +     6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl))); 
           elseif abs(xl-xi)<eps&&yl<yi%node 2
                y1 = (1/12)*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h - 6*a21(p_i, q_i)*H - 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 3*a12(p_i, q_i)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i)*(h + 3*(H - yi + yl))); 
                y2 = (1/12)*   h/H^2*(-3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl - 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) +      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl))); 
                y=y1+y2;
           elseif xl<xi&&abs(yl-yi)<eps%node 3
                y1 = (1/12)*   h/H^2*(3*a21(p_i, q_i)*h + 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H - 6*a21(p_i, q_i)*xi - 6*a22(p_i, q_i)*xi +      6*a21(p_i, q_i)*xl + 6*a22(p_i, q_i)*xl + 2*a11(p_i, q_i)*(h - 3*(H + yi - yl)) +      3*a12(p_i, q_i)*(h - 2*(H + yi - yl))); 
                y3 = (1/12)*   h/H^2*(-3*a12(p_i+1, q_i)*h - 3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl + 6*a12(p_i+1, q_i)*(H - yi + yl) +      2*a11(p_i+1, q_i)*(h - 3*(H - yi + yl))); 
                y=y1+y3;
           elseif abs(xl-xi)<eps&&abs(yl-yi)<eps%node 4
                y1 = (1/12)*   h/H^2*(-2*a11(p_i, q_i)*h - 3*a12(p_i, q_i)*h - 3*a21(p_i, q_i)*h - 2*a22(p_i, q_i)*h + 6*a21(p_i, q_i)*H + 6*a22(p_i, q_i)*H +      6*a21(p_i, q_i)*xi + 6*a22(p_i, q_i)*xi - 6*a21(p_i, q_i)*xl - 6*a22(p_i, q_i)*xl +      6*a11(p_i, q_i)*(H + yi - yl) + 6*a12(p_i, q_i)*(H + yi - yl)); 
                y2 = (1/12)*   h/H^2*(-2*a11(p_i, q_i+1)*h + 3*a12(p_i, q_i+1)*h + 3*a21(p_i, q_i+1)*h - 2*a22(p_i, q_i+1)*h - 6*a21(p_i, q_i+1)*H + 6*a22(p_i, q_i+1)*H +      6*a21(p_i, q_i+1)*xi - 6*a22(p_i, q_i+1)*xi - 6*a21(p_i, q_i+1)*xl + 6*a22(p_i, q_i+1)*xl +      6*a11(p_i, q_i+1)*(H + yi - yl) - 6*a12(p_i, q_i+1)*(H + yi - yl)); 
                y3 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i)*h + 3*a12(p_i+1, q_i)*h + 3*a21(p_i+1, q_i)*h - 2*a22(p_i+1, q_i)*h - 6*a21(p_i+1, q_i)*H + 6*a22(p_i+1, q_i)*H -      6*a21(p_i+1, q_i)*xi + 6*a22(p_i+1, q_i)*xi + 6*a21(p_i+1, q_i)*xl - 6*a22(p_i+1, q_i)*xl +      6*a11(p_i+1, q_i)*(H - yi + yl) - 6*a12(p_i+1, q_i)*(H - yi + yl)); 
                y4 = (1/12)*   h/H^2*(-2*a11(p_i+1, q_i+1)*h - 3*a12(p_i+1, q_i+1)*h - 3*a21(p_i+1, q_i+1)*h - 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H -      6*a21(p_i+1, q_i+1)*xi - 6*a22(p_i+1, q_i+1)*xi + 6*a21(p_i+1, q_i+1)*xl + 6*a22(p_i+1, q_i+1)*xl +      6*a11(p_i+1, q_i+1)*(H - yi + yl) + 6*a12(p_i+1, q_i+1)*(H - yi + yl)); 
                y=y1+y2+y3+y4;
           elseif xl<xi&&yl>yi%node 5
                y = (1/12)*   h/H^2*(3*a21(p_i+1, q_i)*h - 2*a22(p_i+1, q_i)*h + 6*a21(p_i+1, q_i)*H - 6*a22(p_i+1, q_i)*H - 6*a21(p_i+1, q_i)*xi + 6*a22(p_i+1, q_i)*xi +      6*a21(p_i+1, q_i)*xl - 6*a22(p_i+1, q_i)*xl + 3*a12(p_i+1, q_i)*(h + 2*(H + yi - yl)) -      2*a11(p_i+1, q_i)*(h + 3*(H + yi - yl))); 
           elseif abs(xl-xi)<eps&&yl>yi%node 6
                y3 = (1/12)*   h/H^2*(-3*a21(p_i+1, q_i)*h + 2*a22(p_i+1, q_i)*h + 6*a21(p_i+1, q_i)*H - 6*a22(p_i+1, q_i)*H + 6*a21(p_i+1, q_i)*xi -      6*a22(p_i+1, q_i)*xi - 6*a21(p_i+1, q_i)*xl + 6*a22(p_i+1, q_i)*xl - 3*a12(p_i+1, q_i)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i)*(h + 3*(H + yi - yl))); 
                y4 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h - 6*a21(p_i+1, q_i+1)*H - 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 3*a12(p_i+1, q_i+1)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i+1)*(h + 3*(H + yi - yl))); 
                y=y3+y4;
           elseif xl>xi&&yl<yi %node 7
                y = (1/12)*   h/H^2*(3*a21(p_i, q_i+1)*h - 2*a22(p_i, q_i+1)*h + 6*a21(p_i, q_i+1)*H - 6*a22(p_i, q_i+1)*H + 6*a21(p_i, q_i+1)*xi - 6*a22(p_i, q_i+1)*xi -      6*a21(p_i, q_i+1)*xl + 6*a22(p_i, q_i+1)*xl + 3*a12(p_i, q_i+1)*(h + 2*(H - yi + yl)) -      2*a11(p_i, q_i+1)*(h + 3*(H - yi + yl))); 
           elseif xl>xi&&abs(yl-yi)<eps%node 8
                y2 = (1/12)*   h/H^2*(-3*a12(p_i, q_i+1)*h - 3*a21(p_i, q_i+1)*h + 2*a22(p_i, q_i+1)*h - 6*a21(p_i, q_i+1)*H + 6*a22(p_i, q_i+1)*H - 6*a21(p_i, q_i+1)*xi +      6*a22(p_i, q_i+1)*xi + 6*a21(p_i, q_i+1)*xl - 6*a22(p_i, q_i+1)*xl + 2*a11(p_i, q_i+1)*(h - 3*(H + yi - yl)) +      6*a12(p_i, q_i+1)*(H + yi - yl)); 
                y4 = (1/12)*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 2*a11(p_i+1, q_i+1)*(h - 3*(H - yi + yl)) +      3*a12(p_i+1, q_i+1)*(h - 2*(H - yi + yl))); 
                y=y2+y4;
           elseif xl>xi&&yl>yi%node 9
                y = (-(1/12))*   h/H^2*(3*a21(p_i+1, q_i+1)*h + 2*a22(p_i+1, q_i+1)*h + 6*a21(p_i+1, q_i+1)*H + 6*a22(p_i+1, q_i+1)*H + 6*a21(p_i+1, q_i+1)*xi + 6*a22(p_i+1, q_i+1)*xi -      6*a21(p_i+1, q_i+1)*xl - 6*a22(p_i+1, q_i+1)*xl + 3*a12(p_i+1, q_i+1)*(h + 2*(H + yi - yl)) +      2*a11(p_i+1, q_i+1)*(h + 3*(H + yi - yl))); 
           end
        end
end
end