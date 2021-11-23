function z=Df(aux,xj,h)
if xj-h<=aux&&aux<=xj
    z=1/h;
elseif xj<aux&&aux<xj+h
    z=-1/h;
else
    z=0;
end
end