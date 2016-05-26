function f = funcvanderpoldriven(t, x)
  alpha = 0.1
  beta = 1
  f1 = x(2)
  f2 = -alpha*(x(1)^2 - beta)*f1 - x(1)
  f = [f1;f2]
endfunction
