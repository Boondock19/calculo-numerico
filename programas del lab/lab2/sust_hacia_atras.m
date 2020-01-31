% function sust_hacia_atras(U,c)
% Funcion que toma una matriz con triangular superior, junto a una
% vector c el cual es de la misma dimension que U
% Salida: es un vector z resultante.
function x=sust_hacia_atras(U,c)
  [n,m]=size(U);
  l=length(c);

  if (n == m && n ==l)
    x(n)= c(n)/U(n,n);
    for i = n-1:-1:1
      sum=0.;
      for j = i+1:n
        sum= sum + U(i,j)*x(j);
        disp(sum)
      end
      x(i) = (c(i) - sum)/U(i,i);
    end
     x=x';
  else
     if(n~=m)
       disp('matriz no es cuadrada')
     elseif(n ~= l)
       disp('las dimensiones de la matriz y el vector columna no son compatibles');
   end
end