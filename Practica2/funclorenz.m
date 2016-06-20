function f = funclorenz(t, x)
  sigma = 10;
  ro = 99.524;
  beta = 8/3;
  f1 = sigma*(x(2)-x(1));
  f2 = ro*x(1)-x(2)-x(1)*x(3);
  f3 = x(1)*x(2) - beta*x(3);
  f = [f1;f2;f3];
endfunction
