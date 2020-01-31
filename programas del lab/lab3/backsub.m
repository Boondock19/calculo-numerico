% Luis Vieira
% 07-41651
function [x] = backsub(U,y)
% Datos
% U - Matriz triangular superior invertible de orden nxn
% y - Matriz de orden nx1
% Resultado
% - x e sla solucion del sisema lineal Ux = y

[m n]= size(U);
if m~=n, error('Matriz del sistema no cuadrada'), end
n = length(y);
if m~= n, error ('sistema no coherente'),end
x  = zeros(n,1); 
x(n) = y(n) / U(n,n);
for k = n-1:-1:1
    x(k) = (y(k) - U(k,k+1:n)*x(k+1:n))/U(k,k);
end