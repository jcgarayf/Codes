function z=L1df(x,xi,h)
if xi-h<=x&&x<=xi
    z=(x-(xi-h))/h;
elseif xi<x&&x<=xi+h
    z=-(x-(xi+h))/h;
else
    z=0;
end
end