function aproxxs = newtonMethod(f, fprime, x0, M, beta, epsilon)
    aproxxs = x0;

    y = f(x0);

    if abs(y) < epsilon
        return;
    end
    
    for k = 1:M
        x = x0 - y / fprime(x0);
        
        aproxxs = [aproxxs; x];
      
        newY = f(x);
       
        if abs(x - x0) < beta || abs(newY) < epsilon
            return;
        end
        
        x0 = x;
        y = newY;
    end
end