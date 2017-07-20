function Lp = lagrange_poly(xi,i)
  n = length (xi);
  temp = [1];
  denom = 1;
  if ( i == 1 )
    for j = 2:n
      temp = conv ( temp, [1 -xi(j)] );
      denom = denom * (xi(1) - xi(j));
    end
  elseif ( i == n )
    for j = 1:n-1
      temp = conv ( temp, [1 -xi(j)] );
	    denom = denom * ( xi(n) - xi(j) );
    end
  else
    for j = 1:i-1
      temp = conv ( temp, [1 -xi(j)] );
	    denom = denom * ( xi(i) - xi(j) );
    end
    for j = i+1:n
      temp = conv ( temp, [1 -xi(j)] );
	    denom = denom * ( xi(i) - xi(j) );
    end
  endif
  Lp = temp/denom;
endfunction