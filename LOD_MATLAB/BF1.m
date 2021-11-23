function y=BF1(q_i,p_i,p_j,q_j,a11,a12,a21,a22,c)
if abs(p_j-p_i)>1||abs(q_i-q_j)>1
    y=0;
elseif p_j-p_i==1&&q_i-q_j==1%case 1.1
    I_a=ceil(q_i/c);
    J_a=ceil((p_i+1)/c);
y = (-(1/12))*(2*a11(I_a,J_a) - 3*a12(I_a,J_a) - 3*a21(I_a,J_a) + 2*a22(I_a,J_a));
elseif p_j-p_i==1&&q_j-q_i==1%case 1.2
    I_a=ceil((q_i+1)/c);
    J_a=ceil((p_i+1)/c);
y = -(1/12)*(2*a11(I_a,J_a) + 3*a12(I_a,J_a) + 3*a21(I_a,J_a) + 2*a22(I_a,J_a));
elseif p_i-p_j==1&&q_j-q_i==1%case 1.3
    I_a=ceil((q_i+1)/c);
    J_a=ceil(p_i/c);
y = (-(1/12))*(2*a11(I_a,J_a) - 3*a12(I_a,J_a) - 3*a21(I_a,J_a) + 2*a22(I_a,J_a));
elseif p_i-p_j==1&& q_i-q_j==1%case 1.4
    I_a=ceil(q_i/c);
    J_a=ceil(p_i/c);
y = (-(1/12))*(2*a11(I_a,J_a) + 3*a12(I_a,J_a) + 3*a21(I_a,J_a) + 2*a22(I_a,J_a));
elseif p_j-p_i==0&&q_i-q_j==1%%case 2.1
    I_a=ceil(q_i/c);
    J_a_1=ceil(p_i/c);
    J_a_2=ceil((p_i+1)/c);
y1 = (1/12)*(2*a11(I_a,J_a_1) + 3*a12(I_a,J_a_1) - 3*a21(I_a,J_a_1) - 4*a22(I_a,J_a_1));
y2 = (1/12)*(2*a11(I_a,J_a_2) - 3*a12(I_a,J_a_2) + 3*a21(I_a,J_a_2) - 4*a22(I_a,J_a_2));
y=y1+y2;
elseif p_j-p_i==1&&q_i-q_j==0 %case 2.2  
    I_a_1=ceil(q_i/c);
    I_a_2=ceil((q_i+1)/c);
    J_a=ceil((p_i+1)/c);    
y1 = (-(1/12))*(4*a11(I_a_1,J_a) - 3*a12(I_a_1,J_a) + 3*a21(I_a_1,J_a) - 2*a22(I_a_1,J_a)); 
y2 = (-(1/12))*(4*a11(I_a_2,J_a) + 3*a12(I_a_2,J_a) - 3*a21(I_a_2,J_a) - 2*a22(I_a_2,J_a));
y=y1+y2;
elseif p_j-p_i==0&&q_j-q_i==1%case 2.3
    I_a=ceil((q_i+1)/c);
    J_a_1=ceil(p_i/c);
    J_a_2=ceil((p_i+1)/c);
y1 = (1/12)*(2*a11(I_a,J_a_1) - 3*a12(I_a,J_a_1) + 3*a21(I_a,J_a_1) - 4*a22(I_a,J_a_1)); 
y2 = (1/12)*(2*a11(I_a,J_a_2) + 3*a12(I_a,J_a_2) - 3*a21(I_a,J_a_2) - 4*a22(I_a,J_a_2));
y=y1+y2;
elseif p_i-p_j==1&&q_i-q_j==0 %case 2.4
    I_a_1=ceil(q_i/c);
    I_a_2=ceil((q_i+1)/c);
    J_a=ceil(p_i/c);
y1 = (-(1/12))*(4*a11(I_a_1,J_a) + 3*a12(I_a_1,J_a) - 3*a21(I_a_1,J_a) - 2*a22(I_a_1,J_a)); 
y2 = -(1/12)*(4*a11(I_a_2,J_a) - 3*a12(I_a_2,J_a) + 3*a21(I_a_2,J_a) - 2*a22(I_a_2,J_a));
y=y1+y2;
elseif p_j-p_i==0&&q_i-q_j==0 %case 4
    I_a_1=ceil(q_i/c);
    I_a_2=ceil((q_i+1)/c);
    J_a_1=ceil(p_i/c);
    J_a_2=ceil((p_i+1)/c);
y1 = (1/12)*(4*a11(I_a_1,J_a_1) + 3*a12(I_a_1,J_a_1) + 3*a21(I_a_1,J_a_1) + 4*a22(I_a_1,J_a_1));
y2 = (1/12)*(4*a11(I_a_1,J_a_2) - 3*a12(I_a_1,J_a_2) - 3*a21(I_a_1,J_a_2) + 4*a22(I_a_1,J_a_2)); 
%y3 = (1/12)*(4*a11(q_i+1,p_i) + 9*a12(q_i+1,p_i) + 9*a21(q_i+1,p_i) + 28*a22(q_i+1,p_i));
y3=(1/12)*(4*a11(I_a_2,J_a_1) - 3*a12(I_a_2,J_a_1) - 3*a21(I_a_2,J_a_1) + 4*a22(I_a_2,J_a_1)); 
%y4 = (-(1/12))*(4*a11(q_i+1,p_i+1) + 3*a12(q_i+1,p_i+1) - 9*a21(q_i+1,p_i+1) - 8*a22(q_i+1,p_i+1)); 
y4=(1/12)*(4*a11(I_a_2,J_a_2) + 3*a12(I_a_2,J_a_2) + 3*a21(I_a_2,J_a_2) + 4*a22(I_a_2,J_a_2));
y=y1+y2+y3+y4;
end
end