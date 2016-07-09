function [t,x]=metexamen(f, intervalo, x0, N)


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

%No hace falta inicializar datos con otro metodo porque rk3 es monopaso
%Inicializar con rk3
RF1=feval(f, t(1), x(:,1));
RF2=feval(f,t(1)+4*h/3, x(:,1)+4*h/3*RF1);
RF3=feval(f,t(1)+h, x(:,1)+7*h/8*RF1+h/8*RF2);
x(:,2) = x(:,1) + h/8*(3*RF1 - 3*RF2 + 8*RF3);

%Inicializar los F que no se generan en el bucle

%Prediccion metodo de RK3
%RF1=feval(f, t(i), x(:,i));
%RF2=feval(f,t(i)+4*h/3, x(:,i)+4*h/3*RF1);
%RF3=feval(f,t(i)+h, x(:,i)+7*h/8*RF1+h/8*RF2);
%x(:,i+1) = x(i) + h/8*(3*RF1 - 3*RF2 + 8*RF3)

%Coreccion metodo Simpson
%F0 = feval(f, t(i), x(:,i))
%F1 = feval(f, t(i+1), x(:,i+1))
%F2 = feval(f, t(i+2), x(:,i+2))
%x(:,i+2) = x(i) + h/3*(F1 +4*F1 + F2)


F1 = feval(f, t(1), x(:,1));

for i=3:N+1
    %Valor para rk3
    RF1=feval(f, t(i-1), x(:,i-1));
    RF2=feval(f,t(i-1)+4*h/3, x(:,i-1)+4*h/3*RF1);
    RF3=feval(f,t(i-1)+h, x(:,i-1)+7*h/8*RF1+h/8*RF2);
    
    %Valor para Simpson
    F0 = feval(f, t(i-1), x(:,i-1));
  
    xpred = x(:,i-1) + h/8*(3*RF1 - 3*RF2 + 8*RF3);

    fpred = feval(f, t(i), xpred);
    x(:,i) = x(:,i-2) + h/3*(F0 +4*F1 + fpred);
    
    F1 = F0;
  
end

t=t(:);  % Convertimos t en vector columna del tipo (N+1,1)
x=x.';   % Convertimos la matriz x en una de tipo (N+1, n)
