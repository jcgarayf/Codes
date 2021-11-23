function z=A21f(x,y)
global HA;
global A21;
j=floor(x/HA)+1;
i=floor(y/HA)+1;
z=A21(i,j);
end