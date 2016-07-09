datos;
N=1000;
[t,x] = metexamen(f, intervalo, x0, N);

colx=size(x,2); % Numero de columnas de la matriz x
color=['r' 'g' 'b'];
figure(1)
for i=1:colx 
  subplot(colx,1,i)
  plot(t,x(:,i),color(i))
  s=sprintf('Coordenada %d de la soludcion',i);
  title(s)
end

N = 6;
[t,x] = metexamen(f, intervalo, x0, N);
colx=size(x,2); % Numero de columnas de la matriz x
color=['r' 'g' 'b'];
figure(2)
for i=1:colx 
  subplot(colx,1,i)
  plot(t,x(:,i),color(i))
  s=sprintf('Coordenada %d de la soludcion',i);
  title(s)
end