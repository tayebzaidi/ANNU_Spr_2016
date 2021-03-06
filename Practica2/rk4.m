function [t,x]=rk4(f, intervalo, x0, N)

% La funci�n rk3 resuelve un problema de valor inicial de la forma
%  x'=f(t,x) en [t0,T]
%  x(t0)=x0,
% con x0 en R^n, mediante el m�todo de RungeKutta orden 4
% 
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
x0=x0(:); % Convertimos x0 en vector columna
x(:,1)=x0;
for i=1:N
 F1=feval(f, t(i), x(:,i));
 F2=feval(f,t(i)+h/2, x(:,i)+h/2*F1);
 F3=feval(f,t(i)+h/2, x(:,i)+h/2*F2);
 F4=feval(f,t(i)+h,x(:,i)+h*F3);
 x(:,i+1)=x(:,i)+h/6*(F1+2*F2+2*F3+F4);
end

t=t(:);  % Convertimos t en vector columna del tipo (N+1,1)
x=x.';   % Convertimos la matriz x en una de tipo (N+1, n)