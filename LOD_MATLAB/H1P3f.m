function y=H1P3f(p_i,q_i,p_j,q_j)
if abs(p_j-p_i)>1||abs(q_i-q_j)>1
    y=0;
elseif abs(p_j-p_i)==1&&abs(q_i-q_j)==1%case 1.1
y=1/6;
elseif (p_j-p_i==0&&q_i-q_j==1)||(p_j-p_i==0&&q_j-q_i==1)%%case2 2.1,2.3
y=-2/3;
elseif (p_j-p_i==1&&q_i-q_j==0)||(p_i-p_j==1&&q_i-q_j==0)%Case2 2.2, 2.4
y=1/3;    
elseif p_j-p_i==0&&q_i-q_j==0 %case 4
y=4/3;
end
end