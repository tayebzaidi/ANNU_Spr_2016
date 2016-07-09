function [t,x]=rk4Simpson(f, intervalo, x0, N)


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
%inicializar los primeros dos datos con eulermej
N2 = 2;
intervalo2 = [intervalo(1), intervalo(1) + h/N2];
[t2, x2] = eulermej(f, x0, intervalo2, N2);
for I=1:2
  x(I,:)=x2(I,:);
end

%Inicializar los k que no se generan en el bucle


for i=1:N-2
  F2 = feval(f, t(i+2), x(:,i+2));
  F0 = feval(f, t(i), x(:,i));
  F1 = feval(f, t(i+1), x(:,i+1));

  xpred = x(i+2) +   
  x(:,i+2)=x(:,i+1)+h/2 *(3 * F1 - F0);
end

t=t(:);  % Convertimos t en vector columna del tipo (N+1,1)
x=x.';   % Convertimos la matriz x en una de tipo (N+1, n)
