clear variables;
strF = input('Insira a equação da função f em x: ', 's');
a = input('Insira o valor de a: ');
b = input('Insira o valor de b: ');
nprobe = input('Insira o valor de nprobe: ');
tol = input('Insira o valor da tolerância tol: ');

strF = strcat('@(x)', strF);
f = str2func(strF);

intervalSize = (b - a)/nprobe;
roots = [];
for startInt = a : intervalSize : b - intervalSize
    endInt = startInt + intervalSize;
    res = f(startInt) * f(endInt);
    foundRoot = 0;
    if res < 0
        strt = startInt;
        [output(1), output(2)] = secant(f, strt, endInt, tol);
        
        %se a raiz não foi encontrada, aplico 3 bisecções
        %e aciono o método da secante novamente
        while output(2) == 0 && foundRoot == 0            
            %Método da bisecção
            for i = 1:3
               m = (strt + endInt)/2;
               if f(strt)*f(m) < 0
                   endInt = m;
               else
                   if f(strt)*f(m) == 0
                       roots = [roots, m];
                       foundRoot = 1;
                       break;
                   else
                       strt = m;
                   end
               end
            end
            
            if foundRoot == 0
                [output(1), output(2)] = secant(f, strt, endInt, tol);
            end
        end
        
        if foundRoot == 0
            roots = [roots, output(1)];
        end
    else
          if res == 0
              if f(startInt) == 0
                  roots = [roots, startInt];
              end
              if f(endInt) == 0
                 roots =  [roots, endInt];
              end
          end
    end
end

for i=1:length(roots)
   disp(roots(i));
end