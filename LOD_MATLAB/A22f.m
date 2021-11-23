function z=A22f(x,y)
global HA;
global A22;
j=floor(x/HA)+1;
i=floor(y/HA)+1;
z=A22(i,j);
end