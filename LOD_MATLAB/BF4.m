function y=BF4(p_k,q_k,p_l,q_l,a11,a12,a21,a22,h)
    xk=p_k*H;yk=q_k*H;
    xl=p_l*H;yl=q_l*H;
    y=0;
if abs(p_l-p_k)>1||abs(q_k-q_l)>1
    return;
elseif p_l-p_k==1&&q_k-q_l==1
    p0=round(xk/h);pf=round(xl/h);q0=round(yl/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(-2*a22(i+1,j+1)*(-2*h^2 + 6*(H - xi + xk)*(H + xi - xl) +         3*h*(-2*xi + xk + xl)) +      3*a21(i+1,j+1)*(h + 2*(H + xi - xl))*(h + 2*(H + yi - yk)) +          3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h - 2*(H - yi + yl)) +      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H + yi - yk)*(H - yi + yl) -         3*h*(yk + yl)));
        end
    end
elseif p_l-p_k==1&&q_l-q_k==1
    p0=round(xk/h);pf=round(xl/h);q0=round(yk/h);qf=round(yl/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y = y+(1/12)*   h^2*(2*a22(i+1,j+1)*(2*h^2 + 6*h*xi - 6*(H - xi + xk)*(H + xi - xl) -         3*h*(xk + xl)) +      3*a21(i+1,j+1)*(h + 2*(H + xi - xl))*(h - 2*(H - yi + yk)) +          3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h + 2*(H + yi - yl)) +      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H - yi + yk)*(H + yi - yl) -         3*h*(yk + yl)));
        end
    end
elseif p_k-p_l==1&&q_l-q_k==1
    p0=round(xl/h);pf=round(xk/h);q0=round(yk/h);qf=round(yl/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(-2*a22(i+1,j+1)*(-2*h^2 + 6*(H + xi - xk)*(H - xi + xl) +         3*h*(-2*xi + xk + xl)) +      3*a21(i+1,j+1)*(h - 2*(H - xi + xl))*(h - 2*(H - yi + yk)) +          3*a12(i+1,j+1)*(h + 2*(H + xi - xk))*(h + 2*(H + yi - yl)) +      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H - yi + yk)*(H + yi - yl) -         3*h*(yk + yl)));
        end
    end
elseif p_k-p_l==1&& q_k-q_l==1
    p0=round(xl/h);pf=round(xk/h);q0=round(yl/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
           y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(2*h^2 + 6*h*xi - 6*(H + xi - xk)*(H - xi + xl) -         3*h*(xk + xl)) +      3*a21(i+1,j+1)*(h - 2*(H - xi + xl))*(h + 2*(H + yi - yk)) +          3*a12(i+1,j+1)*(h + 2*(H + xi - xk))*(h - 2*(H - yi + yl)) +      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H + yi - yk)*(H - yi + yl) -         3*h*(yk + yl)));
        end
    end
elseif p_l-p_k==0&&q_k-q_l==1
    p0=round((xk-H)/h);pf=round(xk/h);q0=round(yl/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(-2*h^2 - 6*(H + xi - xk)*(H + xi - xl) +         3*h*(-2*H - 2*xi + xk + xl)) -      3*a21(i+1,j+1)*(h + 2*(H + xi - xl))*(h + 2*(H + yi - yk)) -          3*a12(i+1,j+1)*(h + 2*(H + xi - xk))*(h - 2*(H - yi + yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H + yi - yk)*(H - yi + yl) -         3*h*(yk + yl)));
        end
    end
     p0=round(xk/h);pf=round((xk+H)/h);q0=round(yl/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(-2*h^2 - 6*(H - xi + xk)*(H - xi + xl) +         3*h*(2*H - 2*xi + xk + xl)) -      3*a21(i+1,j+1)*(h - 2*(H - xi + xl))*(h + 2*(H + yi - yk)) -          3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h - 2*(H - yi + yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H + yi - yk)*(H - yi + yl) -         3*h*(yk + yl)));
        end
    end
elseif p_l-p_k==1&&q_k-q_l==0
    p0=round(xk/h);pf=round(xl/h);q0=round((yk-H)/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(-2*h^2 + 6*(H - xi + xk)*(H + xi - xl) +         3*h*(-2*xi + xk + xl)) -      3*a21(i+1,j+1)*(h + 2*(H + xi - xl))*(h + 2*(H + yi - yk)) -         3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h + 2*(H + yi - yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*(H + yi - yk)*(H + yi - yl) +         h*(6*H + 6*yi - 3*(yk + yl))));
        end
    end
    p0=round(xk/h);pf=round(xl/h);q0=round(yk/h);qf=round((yk+H)/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(-2*a22(i+1,j+1)*(2*h^2 + 6*h*xi - 6*(H - xi + xk)*(H + xi - xl) -         3*h*(xk + xl)) -      3*a21(i+1,j+1)*(h + 2*(H + xi - xl))*(h - 2*(H - yi + yk)) -          3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h - 2*(H - yi + yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*(H - yi + yk)*(H - yi + yl) -         3*h*(2*H - 2*yi + yk + yl)));
        end
    end
elseif p_l-p_k==0&&q_l-q_k==1
    p0=round((xk-H)/h);pf=round(xk/h);q0=round(yk/h);qf=round(yl/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(-2*h^2 - 6*(H + xi - xk)*(H + xi - xl) +         3*h*(-2*H - 2*xi + xk + xl)) -      3*a21(i+1,j+1)*(h + 2*(H + xi - xl))*(h - 2*(H - yi + yk)) -          3*a12(i+1,j+1)*(h + 2*(H + xi - xk))*(h + 2*(H + yi - yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H - yi + yk)*(H + yi - yl) -         3*h*(yk + yl)));
        end
    end
    p0=round(xk/h);pf=round((xk+H)/h);q0=round(yk/h);qf=round(yl/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(-2*a22(i+1,j+1)*(2*h^2 + 6*(H - xi + xk)*(H - xi + xl) -         3*h*(2*H - 2*xi + xk + xl)) -      3*a21(i+1,j+1)*(h - 2*(H - xi + xl))*(h - 2*(H - yi + yk)) -          3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h + 2*(H + yi - yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*h*yi - 6*(H - yi + yk)*(H + yi - yl) -         3*h*(yk + yl)));
        end
    end
elseif p_k-p_l==1&&q_k-q_l==0 
    p0=round(xl/h);pf=round(xk/h);q0=round((yk-H)/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(-2*a22(i+1,j+1)*(2*h^2 + 6*h*xi - 6*(H + xi - xk)*(H - xi + xl) -         3*h*(xk + xl)) -      3*a21(i+1,j+1)*(h - 2*(H - xi + xl))*(h + 2*(H + yi - yk)) -          3*a12(i+1,j+1)*(h + 2*(H + xi - xk))*(h + 2*(H + yi - yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*(H + yi - yk)*(H + yi - yl) +         h*(6*H + 6*yi - 3*(yk + yl))));
        end
    end
     p0=round(xl/h);pf=round(xk/h);q0=round(yk/h);qf=round((yk+H)/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(-2*h^2 + 6*(H + xi - xk)*(H - xi + xl) +         3*h*(-2*xi + xk + xl)) -      3*a21(i+1,j+1)*(h - 2*(H - xi + xl))*(h - 2*(H - yi + yk)) -          3*a12(i+1,j+1)*(h + 2*(H + xi - xk))*(h - 2*(H - yi + yl)) -      2*a11(i+1,j+1)*(2*h^2 + 6*(H - yi + yk)*(H - yi + yl) -         3*h*(2*H - 2*yi + yk + yl)));
        end
    end
elseif p_l-p_k==0&&p_k-p_l==0
    p0=round((xk-H)/h);pf=round(xk/h);q0=round((yk-H)/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(2*h^2 + h*(6*H + 6*xi - 6*xk) + 6*(H + xi - xk)^2) +      3*a12(i+1,j+1)*(h + 2*(H + xi - xk))*(h + 2*(H + yi - yk)) +           3*a21(i+1,j+1)*(h + 2*(H + xi - xk))*(h + 2*(H + yi - yk)) +      2*a11(i+1,j+1)*(2*h^2 + h*(6*H + 6*yi - 6*yk) + 6*(H + yi - yk)^2)); 
        end
    end
    p0=round(xk/h);pf=round((xk+H)/h);q0=round((yk-H)/h);qf=round(yk/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(2*h^2 + 6*(H - xi + xk)^2 - 3*h*(2*H - 2*xi + 2*xk)) +      3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h + 2*(H + yi - yk)) +           3*a21(i+1,j+1)*(h - 2*(H - xi + xk))*(h + 2*(H + yi - yk)) +      2*a11(i+1,j+1)*(2*h^2 + h*(6*H + 6*yi - 6*yk) + 6*(H + yi - yk)^2)); 
        end
    end
     p0=round((xk-H)/h);pf=round(xk/h);q0=round(yk/h);qf=round((yk+H)/h);
    for j=p0:pf-1
        for i=q0:qf-1
            xi=j*h; yi=i*h;
            y =y+ (1/12)*   h^2*(2*a22(i+1,j+1)*(2*h^2 + 6*(H - xi + xk)^2 - 3*h*(2*H - 2*xi + 2*xk)) +      3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h - 2*(H - yi + yk)) +           3*a21(i+1,j+1)*(h - 2*(H - xi + xk))*(h - 2*(H - yi + yk)) +      2*a11(i+1,j+1)*(2*h^2 + 6*(H - yi + yk)^2 - 3*h*(2*H - 2*yi + 2*yk))); 
        end
    end
   p0=round(xk/h);pf=round((xk+H)/h);q0=round(yk/h);qf=round((yk+H)/h);
    for j=p0:pf-1
        for i=q0:qf-1 
            y =y+ (1/12)*   h^2*(-2*a22(i+1,j+1)*(2*h^2 + 6*h*xi - 6*h*xk -         6*(H + xi - xk)*(H - xi + xk)) -      3*a21(i+1,j+1)*(h + 2*(H + xi - xk))*(h - 2*(H - yi + yk)) -           3*a12(i+1,j+1)*(h - 2*(H - xi + xk))*(h - 2*(H - yi + yk)) -      2*a11(i+1,j+1)*(2*h^2 + 6*(H - yi + yk)^2 - 3*h*(2*H - 2*yi + 2*yk)));
        end
    end
end
end