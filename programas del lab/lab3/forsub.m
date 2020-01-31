% Luis Vieira
% 07-41651
function [y] = forsub(L,b)
% Datos
% L - Matriz triangular inferior invertibl de orden nxn
% b - Matriz de orden nx1
% Resultado
% y - Solucion del sisema lineal Ly = b

[m n]= size(L);
if m~=n, error('Matriz del sistema no cuadrada'), end
n = length(b);
if m~= n, error ('sistema no coherente'),end
y  = zeros(n,1); 
y(1) = b(1) / L(1,1);
for k = 2:n
    y(k) = (b(k) - L(k,1:k-1)*y(1:k-1))/L(k,k);
end