% Luis Vieira
% 07-41651
% Funcion Para hallar las matrices L y U a partir de la matriz A, y la sol.
function [L,U] = LU(A)
%Parametros:
% A matriz cuadrada a resolver
% Salida:  
% L - Matriz triangular inferior
% U - Matriz triangular superior
% x - Solucion del sistema Ax=b

n = size(A);
n = n(1);
L = zeros(n,n);
U = zeros(n,n);



for k=1:n
	L(k,k) =1;
    aux =  L(k,1:k-1)*U(1:k-1,k);
	U(k,k) = A(k,k) - aux;
    
    aux =  L(k,1:k-1)*U(1:k-1,k+1:n);     
	U(k,k+1:n) = (A(k,k+1:n) - aux)/L(k,k);
    
    aux = L(k+1:n,1:k-1)*U(1:k-1,k);
	L(k+1:n,k) = (A(k+1:n,k) - aux)/U(k,k);
  
end
