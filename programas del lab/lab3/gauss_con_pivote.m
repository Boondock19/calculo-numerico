function [U,x]=gauss_con_pivote(A,b)
  [n,m]=size(A);
  l=length(b);
  if (n==m && l==m)
    C=[A b];
    for k=2:n
      i0=k-1;
      for i=k:n
        if abs(C(i0,k-1))<abs(C(i,k-1))
          i0=i;
        end
      end
      for j=1:n+1
        S=C(i0,j);
        C(i0,j)=C(k-1,j);
        C(k-1,j)=S;
      end
      for i=k:n
        alpha=C(i,k-1)/C(k-1,k-1);
        for j=k:n+1;
          C(i,j)=C(i,j)-alpha*C(k-1,j);
        end
      end
     end
    U=C(1:n,1:m);
    U=triu(U);
    x=C(1:n,n+1);
  end 
    
end
