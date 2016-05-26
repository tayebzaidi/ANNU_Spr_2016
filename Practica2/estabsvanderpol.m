datos
opciones=odeset('Stats','off','AbsTol',1.e-5,'RelTol',1.e-5);
[t1,x1]=ode45(f,intervalo,x0,opciones)

figure(1)
subplot(2,1,1)
plot(t1,x1(:,1))

subplot(2,1,2)
plot(t1,x1(:,2))

opciones=odeset('Stats','off','AbsTol',1.e-5,'RelTol',1.e-5);
[t2,x2]=ode23s(f,intervalo,x0,opciones) %should be ode15s but Octave doesn't have it

figure(2)
subplot(2,1,1)
plot(t2,x2(:,1))

subplot(2,1,2)
plot(t2,x2(:,2))

diff_vec_t1 = diff(t1)
diff_vec_t2 = diff(t2)

figure(3)
plot(t1)

hold on
plot(t2)


