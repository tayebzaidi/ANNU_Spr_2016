%f=@funccorazon; intervalo=[0 2*pi]; x0=[0 2]; N=1000;
%f=@funcosciladorarmo; intervalo=[0 10]; x0=[1 0]; N=1000;
f=@funcvanderpol; intervalo=[0 10]; x0=[0.1 0.2]; N=1000;
%f=@func1; intervalo=[0 10]; x0=[0 1]; N=1000;
%f=@func2; intervalo=[0 10]; x0=[1 0]; N=1000;
%[t,x]=ode45(@funccorazon, intervalo, x0, N)