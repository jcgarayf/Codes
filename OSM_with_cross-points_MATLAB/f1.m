function y=f1(x,na,nb)
    %y=tan(z)-2*na*z./(z.^2-na^2);
    y=tan(x) - 2*x*(na + nb*(x^2))/(x^2 - (na + nb*(x^2))^2);
end