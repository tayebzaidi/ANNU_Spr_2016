function f = funcpendulo(t, x)
  beta = 0.25;
  L = 1;
  g = 9.8;
  F = 1.1;
  f1=x(2);
  f2=-g*sin(x(1))-2*L*beta*f1+F;
  f=[f1;f2];
endfunction
