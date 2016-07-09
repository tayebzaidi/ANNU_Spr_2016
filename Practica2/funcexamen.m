function f = funcexamen(t, x)
  x
  %x = x.';
  %t = t(:);
  f1=x(2);
  f2=sqrt(t) - 1/10*cos(t)*f1^2 - 3*x(1);
  f=[f1;f2];

