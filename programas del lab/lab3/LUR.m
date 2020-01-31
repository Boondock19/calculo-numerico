
% Funcion que usa las matrices L y U y halla una solucion con b
function [x] = LUR(L,U,b)
%Parametros:
% A matriz cuadrada a resolver
% L - Matriz triangular inferior
% U - Matriz triangular superior
% Salida:  
% x - Solucion del sistema Ax=b

y = forsub(L,b);
x = backsub(U,y);