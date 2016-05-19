function comp2ode45(met1)
  datos;
  [t,x1]=met1(f, intervalo, x0, N);
  h=(intervalo(2)-intervalo(1))/N;
  tspan = intervalo(1):h:intervalo(2);
  [t,x2]=ode45(f, tspan, x0);
  grafica(t, x1, x2);
end
function grafica(t, x1, x2)
  colx1=size(x1,2); % Numero de columnas de la matriz x1
  colx2=size(x2,2);
  color=['r' 'g' 'b'];
  diff = x1 - x2
  norm_diff = norm(diff, inf)
  figure(1)
  %Ver si la ecuacion es escalar o en R2/R3
  if colx1==1 && colx2==2
    subplot(colx1,2,1)
    plot(t,x1(:,1),color(1))
    subplot(colx2,2,2)
    plot(t,x2(:,1),color(2))
    s=sprintf('Coordenada %d de la soludcion',i);
    title(s)
    
    pause(2)
    
    figure(2)
    plot(t, diff(:,1), color(1))
   
    pause(2)
   
    figure(3) 
    disp(norm_diff)
    plot(norm_diff)
    legend(sprintf('norm_diff=%f', norm_diff))  
  elseif colx1==2 && colx2==2 %Ver si estamos en R2
    subplot(2,2,1)
    plot(t,x1(:,1),'r')
    subplot(2,2,2)
    plot(t,x1(:,2),'r')
    subplot(2,2,3)
    plot(t,x2(:,1),'g')
    subplot(2,2,4)
    plot(t,x2(:,2),'g')
    %comet(x(:,1),x(:,2))
    
    pause(2)
    
    figure(2)
    subplot(2,1,1)
    plot(t,diff(:,1),'r')
    subplot(2,1,2)
    plot(t,diff(:,2),'r')
    
    pause(2)
    
    figure(3)
    plot(x1(:,1),x1(:,2), 'g')
    
    pause(2)
    
    figure(4)
    disp(norm_diff)
    plot(norm_diff)
    legend(sprintf('norm_diff=%f', norm_diff))
    
  elseif colx1==3 && colx2==3
    subplot(2,3,1)
    plot(t,x1(:,1),'r')
    subplot(2,3,2)
    plot(t,x1(:,2),'r')
    subplot(2,3,3)
    plot(t,x1(:,3),'r')
    subplot(2,3,4)
    plot(t,x2(:,1),'g')
    subplot(2,2,1)
    plot(t,x2(:,2),'g')
    subplot(2,2,2)
    plot(t,x2(:,3),'g')
    subplot(2,2,3)

    pause(2)
    
    figure(2)
    subplot(3,1,1)
    plot(t, diff(:,1), 'r')
    subplot(3,1,2)
    plot(t, diff(:,2), 'r')
    subplot(3,1,3)
    plot(t, diff(:,3), 'r')
    
    pause(2)
    
    figure(3)
    plot3(x(:,1),x(:,2),x(:,3),'r')
    %comet3(x(:,1),x(:,2),x(:,3))
    
    pause(2)
    disp(norm_diff)
    plot(norm_diff)
    legend(sprintf('norm_diff=%f', norm_diff))
  end
end
  