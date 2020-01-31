% Luis Vieira
% 07-41651
% Funcion que calcula la solucion de un sistema a traves del Metodo de
% Gauss
function x = gauss(A,b)
% Parametros:
%   - A matriz 
%   - b vector
% Salida:
%   - x vector solucion

n = size(A);
n = n(1);
x = ones(n,1);  

for k = 1:n-1
   
    for i = k+1:n

        z = A(i,k) / A(k,k) ;
           
        for j = k+1:n
        
            A(i,j) = A(i,j) - z*A(k,j);
        end
        b(i,1) = A(i,j) - z*b(k,1);
    end
    
end

x(n,1) = b(n,1)/A(n,n);
for k = n-1:-1 :1
    var = 0;
    for i = k+1 : n
        var = var + A(k,i)*x(i,1);
    end
        
    x(k,1) =  (b(k,1) - var) / A(k,k);
end