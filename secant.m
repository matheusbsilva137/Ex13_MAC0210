function [root, foundRoot] = secant(f, a, b, tol)
    xkAnt = a;
    xk = b;
    foundRoot = 1;
    
    while abs(xk - xkAnt) >= tol * (1 + abs(xk)) || abs(f(xk)) >= tol
        if abs(f(xk)) >= .5*abs(f(xkAnt))
            %A 'velocidade' da convergência está abaixo do desejado
            %sinalizo que não encontrei a raiz para que seja aplicado
            %o método da bisecção no programa principal
            foundRoot = 0;
            break;
        end
        
        xkProx = xk - (f(xk)*(xk - xkAnt))/(f(xk)-f(xkAnt));
        xkAnt = xk;
        xk = xkProx;
    end
    
    root = xk;
end