function f = funcoscilador(t,x)
  a=10;
  A=1;
  beta=0;
  omega=12;
  f1 = x(2);
  f2 = A*cos(omega*t)-2*beta*x(2)-a^2*x(1);
  f=[f1;f2];
endfunction

