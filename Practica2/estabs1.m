f=@funcestabs; intervalo=[0 1]; x0=[0]; N=24;
[t1,x1] = euler(f, intervalo, x0, N)

N=26;
[t2,x2] = euler(f, intervalo, x0, N)

f=@estabs_exac
N = 1000
t3 = linspace(0, 1, N)
for i=1:N
  x3(i) = feval(f, t3(i))
end

f=@funcestabs; intervalo=[0 1]; x0=[0]; N=50;
[t4,x4] = euler(f, intervalo, x0, N)

N = 23
[t5,x5] = euler(f, intervalo, x0, N)

figure(1)
subplot(2,1,1)
plot(t1,x1, 'g')

hold on
plot(t2,x2, 'r')

hold on
plot(t5, x5, 'b')

subplot(2,1,2)
plot(t3,x3, 'r')

hold on
plot(t4, x4, 'b')
