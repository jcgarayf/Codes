function y=df1(x,na,nb)
    %y=(sec(z)).^2+2*na*(na^2+z.^2)./(z.^2-na^2).^2;
     %y=(sec(z))^2+2*na*(na^2+z^2)/(z^2-na^2)^2;
     y=(2*(na^3 + na^2*nb*x^2 + na*(x^2 - nb^2*x^4) - ...
      nb*x^2*(x^2 + nb^2*x^4)))/(na^2 - x^2 + 2*na*nb*x^2 +... 
     nb^2*x^4)^2 + sec(x)^2;
end
