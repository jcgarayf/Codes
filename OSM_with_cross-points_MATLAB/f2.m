function y=f2(x,na,nb)    
    %y=tan(z)+z/na;
    y=x/(na + nb*x^2) + tan(x);
end