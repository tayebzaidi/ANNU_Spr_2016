function [t,x]=ab4(f, intervalo, x0, N)


% ENTRADA:
%  f=@func: funci�n f definida en el fichero func.m
%  intervalo: [t0,T], donde esta planteado el sistema de ecuaciones
%             diferenciales
%  x0: vector inicial de R^n
%  N: n�mero de subintervalos
%
% SALIDA:
%  t: vector de abscisas donde se va a aproximar la soluci�n
%  x: matriz de ordenadas de la soluci�n aproximada de tama�o (N+1) x n

h=(intervalo(2)-intervalo(1))/N;
%t=intervalo(1):h:intervalo(2);
t=linspace(intervalo(1),intervalo(2),N+1);
x(:,1)=x0;
x0=x0(:); % Convertimos x0 en vector columna

x(:,2)=x(:,1)+h*feval(f,t(1),x(:,1));
x(:,3)=x(:,2)+h*feval(f,t(2),x(:,2));
x(:,4)=x(:,3)+h*feval(f,t(3),x(:,3));


for i=1:N-3
  F0 = feval(f, t(i), x(:,i));
  F1 = feval(f, t(i+1), x(:,i+1));
  F2 = feval(f, t(i+2), x(:,i+2));
  F3 = feval(f, t(i+3), x(:,i+3));
  x(:,i+4)=x(:,i+3)+h/24 *(55*F3 - 59*F2 + 37*F1 - 9*F0);
end

t=t(:);  % Convertimos t en vector columna del tipo (N+1,1)
x=x.';   % Convertimos la matriz x en una de tipo (N+1, n)
