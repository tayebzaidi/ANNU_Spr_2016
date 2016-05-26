function f = funcpendulo(t, x)
  f1=x(2);
  f2=-9.8*sin(x(1))-2*0.25*f1;
  f=[f1;f2]
endfunction
