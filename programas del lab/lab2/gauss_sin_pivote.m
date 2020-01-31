%function gauss_sin_pivote.
%toma una matriz y un vector de las mismas dimensiones
%y retorna la matriz U y el vector Mb que estara en el mismo b.
function [A,b]=gauss_sin_pivote(A,b)
  [n,m]=size(A)
  l=length(b)
  if (n == m && n ==l)
    for k = 2:n
      for i = k:n
        alpha = A(i,k-1)/A(k-1,k-1);
        for j = k:n
          A(i,j) = A(i,j)-alpha*A(k-1,j);
        endfor
        b(i) = b(i)-alpha*b(k-1);
      endfor
    endfor
    else
     if(n~=m)
       disp('matriz no es cuadrada')
     elseif(n ~= l)
       disp('las dimensiones de la matriz y el vector columna no son compatibles');
   end
  endif
endfunction
