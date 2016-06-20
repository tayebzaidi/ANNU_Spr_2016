function f = funcdeppresa2(t, x)
  a = 1;
  b = 1;
  c = 1;
  d = 1;
  e = 0.4;
  f = 0.02;
  f1=a*x(1)-b*x(1)*x(2)-e*(x(1))^2;
  f2=-c*x(2) + d*x(1)*x(2) - f*(x(2))^2;
  f=[f1;f2];
endfunction
