function y=H1P1f(p_i,q_i,p_j,q_j,h)
if abs(p_j-p_i)>1||abs(q_i-q_j)>1
    y=0;
elseif abs(p_j-p_i)==1&&abs(q_i-q_j)==1%case 1.1
y=h^2/36;
elseif (p_j-p_i==0&&q_i-q_j==1)||(p_j-p_i==1&&q_i-q_j==0)||(p_j-p_i==0&&q_j-q_i==1)||(p_i-p_j==1&&q_i-q_j==0)%%case 2.1
y=h^2/9;
elseif p_j-p_i==0&&q_i-q_j==0 %case 4
y=4/9*h^2;
end
end