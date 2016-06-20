function f = funcvanderpol(t, x)
  alpha = 1
  beta = -0.2
  f1 = x(2)
  f2 = -alpha*(x(1)^2 - beta)*f1 - x(1)
  f = [f1;f2]
endfunction
