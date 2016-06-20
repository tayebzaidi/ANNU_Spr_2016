function f = funcdeppresa1(t, x)
  a = 3;
  b = 0.2;
  c = 0.6;
  d = 5;
  f1=a*x(1)-b*x(1)*x(2);
  f2=-c*x(2) + d*x(1)*x(2);
  f=[f1;f2];
endfunction
