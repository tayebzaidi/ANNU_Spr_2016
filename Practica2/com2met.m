function com2met(met1, met2)
  datos
  [t1,x1]=met1(f, intervalo, x0, N)
  [t2,x2]=met2(f, intervalo, x0, N)
  graficas(t1, x1)
  graficas(t2,x2)

function grafica(t, x)
  colx=size(x,2); % Numero de columnas de la matriz x
  color=['r' 'g' 'b'];
  figure(1)
  for i=1:colx 
    subplot(colx,1,i)
    plot(t,x(:,i),color(i))
    s=sprintf('Coordenada %d de la soludcion',i);
    title(s)
  end
  if colx>1
    pause(3) 
    figure(2)
    if colx==2
        plot(x(:,1),x(:,2),'r')
        %comet(x(:,1),x(:,2))
    else
        %plot3(x(:,1),x(:,2),x(:,3),'r')
        comet3(x(:,1),x(:,2),x(:,3))
    end
  title('Trayectoria de la solucion')
  end
