function y=case_sqf(xi,yi,H)
    if mod(xi,H)<eps&&mod(yi,H)<eps
        y=4;%among four squares
    elseif mod(xi,H)<eps
        y=2;%between two squares, on vertical edge
    elseif mod(yi,H)<eps
        y=22;%between two squares, on horizontal edge
    else
        y=1;%inside 1 squares
        
    end
end
        
        