function [t,x] = solexac1(f,intervalo,x0,N)
  t = linspace(intervalo(1),intervalo(2),N+1);
  x0=x0(:); % Convertimos x0 en vector columna
  x(:,1)=x0;
  sol = @solexac1_func
  for i=1:N+1
    x(:,i)=feval(sol,t(i));
  end
  t=t(:);  % Convertimos t en vector columna del tipo (N+1,1)
  x=x.';   % Convertimos la matriz x en una de tipo (N+1, n)
endfunction

function sol = solexac1_func(t)
  f1 = exp(-0.1*t)*sin(2*t)
  f2 = exp(-0.1*t)*cos(2*t)
  sol = [f1;f2]
 end
  