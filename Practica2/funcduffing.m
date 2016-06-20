function f = funcduffing(t, x)
  alpha = 0;
  f1 = x(2);
  f2 = -alpha*f1-x(1)^3+x(1);
  f = [f1;f2];
endfunction
