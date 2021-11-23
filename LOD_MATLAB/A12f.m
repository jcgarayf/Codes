function z=A12f(x,y)
global HA;
global A12;
j=floor(x/HA)+1;
i=floor(y/HA)+1;
z=A12(i,j);
end