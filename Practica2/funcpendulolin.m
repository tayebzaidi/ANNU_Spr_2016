function f = funcpendulolin(t, x)
  f1=x(2);
  f2=-9.8*x(1)-2*1.25*f1;
  f=[f1;f2]
endfunction
