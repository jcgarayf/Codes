function z=A11f(x,y)
global HA;
global A11;
j=floor(x/HA)+1;
i=floor(y/HA)+1;
z=A11(i,j);
end