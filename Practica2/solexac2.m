function [t,x] = solexac2(f,intervalo,x0,N)
  t = linspace(intervalo(1),intervalo(2),N+1);
  x0=x0(:); % Convertimos x0 en vector columna
  x(:,1)=x0;
  sol = @solexac2_func
  for i=1:N+1
    x(:,i)=feval(sol,t(i));
  end
  t=t(:);  % Convertimos t en vector columna del tipo (N+1,1)
  x=x.';   % Convertimos la matriz x en una de tipo (N+1, n)
endfunction

function sol = solexac2_func(t)
  f1 = 8/7*cos(sqrt(2)*t) - 1/7*cos(3*t)
  f2 = -sqrt(2)*8/7*sin(sqrt(2)*t) + 3/7*sin(3*t)
  sol = [f1;f2]
 end
  