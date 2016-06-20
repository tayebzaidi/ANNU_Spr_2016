%f=@funccorazon; intervalo=[0 2*pi]; x0=[0 2]; N=1000;
%f=@funcosciladorarmo; intervalo=[0 10]; x0=[1 0]; N=1000;
%f=@funcvanderpol; intervalo=[0 150]; x0=[0.1 0.1]; N=1000;
%f=@func1; intervalo=[0 10]; x0=[0 1]; N=1000;
%f=@func2; intervalo=[0 10]; x0=[1 0]; N=1000;
%f=@funcestabs; intervalo=[0 10]; x0=[0]; N=1000;
f=@funcpendulo; intervalo=[0 10]; x0=[0 1]; N=1000;
%f=@funcpendulolin; intervalo=[0 10]; x0=[pi 0];N=1000;
%f=@funcdeppresa1; intervalo=[0 20]; x0=[1 1];N=1000;
%f=@funcdeppresa2; intervalo=[0 10];x0=[1 1];N=1000;
%f=@funcduffing; intervalo=[0 10];x0=[0 1];N=1000;
%f=@funclorenz; intervalo=[0 5];x0=[0 5 75];N=1000;
%f=@funcoscilador; intervalo=[0 10];x0=[0 0];N=1000;

%[t,x]=ode45(@funccorazon, intervalo, x0, N)
