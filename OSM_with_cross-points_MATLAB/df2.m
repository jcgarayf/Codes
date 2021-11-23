function y=df2(x,na,nb)
    %y=(sec(z)).^2+1/na;
    y=(na - nb*x^2)/(na + nb*x^2)^2 + sec(x)^2;
end